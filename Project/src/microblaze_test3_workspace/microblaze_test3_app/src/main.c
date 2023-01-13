/*
 * Main file for VLSI Design project
 * This code implements a simplified clone of Guitar Hero on a Nexys A7-100T Development Board.
 * Part of the code was copied from Xilinx' example programs about Interrupts
*/

/***************************** Include Files *********************************/

#include "xparameters.h"
#include "xgpio.h"
#include "xil_exception.h"
#include "microblaze_sleep.h"

#ifdef XPAR_INTC_0_DEVICE_ID
 #include "xintc.h"
 #include <stdio.h>
#else
 #include "xscugic.h"
 #include "xil_printf.h"
#endif

/************************** Constant Definitions *****************************/
#ifndef TESTAPP_GEN

#define GPIO_DEVICE_ID		XPAR_AXI_GPIO_BUTTONS_DEVICE_ID
#define GPIO_CHANNEL1		1

#ifdef XPAR_INTC_0_DEVICE_ID
 #define INTC_GPIO_INTERRUPT_ID	XPAR_INTC_0_GPIO_8_VEC_ID
 #define INTC_DEVICE_ID	XPAR_INTC_0_DEVICE_ID
#else
 #define INTC_GPIO_INTERRUPT_ID	XPAR_FABRIC_AXI_GPIO_0_IP2INTC_IRPT_INTR
 #define INTC_DEVICE_ID	XPAR_SCUGIC_SINGLE_DEVICE_ID
#endif /* XPAR_INTC_0_DEVICE_ID */

#define GPIO_ALL_LEDS		0xFFFF
#define GPIO_ALL_BUTTONS	0xFFFF

#define BUTTON_CHANNEL	 1	/* Channel 1 of the GPIO Device */
#define BUTTON_INTERRUPT XGPIO_IR_CH1_MASK  /* Channel 1 Interrupt Mask */
#define LED_CHANNEL	 2	/* Channel 2 of the GPIO Device */

//#define INTERRUPT_CONTROL_VALUE 0x7

//#define LED_DELAY	1000000

#endif /* TESTAPP_GEN */

#define INTR_DELAY	0x00FFFFFF

#ifdef XPAR_INTC_0_DEVICE_ID
 #define INTC_DEVICE_ID	XPAR_INTC_0_DEVICE_ID
 #define INTC		XIntc
 #define INTC_HANDLER	XIntc_InterruptHandler
#else
 #define INTC_DEVICE_ID	XPAR_SCUGIC_SINGLE_DEVICE_ID
 #define INTC		XScuGic
 #define INTC_HANDLER	XScuGic_InterruptHandler
#endif /* XPAR_INTC_0_DEVICE_ID */

// Macro to print a byte on stdout
// How to use:
// xil_printf("Text" BYTE_TO_BINARY_PATTERN "\r\n", BYTE_TO_BINARY(ByteToPrint));
#define BYTE_TO_BINARY_PATTERN "%c%c%c%c%c%c%c%c"
#define BYTE_TO_BINARY(byte)  \
  (byte & 0x80 ? '1' : '0'), \
  (byte & 0x40 ? '1' : '0'), \
  (byte & 0x20 ? '1' : '0'), \
  (byte & 0x10 ? '1' : '0'), \
  (byte & 0x08 ? '1' : '0'), \
  (byte & 0x04 ? '1' : '0'), \
  (byte & 0x02 ? '1' : '0'), \
  (byte & 0x01 ? '1' : '0')

#define NOTE_C4 0b0001
#define NOTE_D4 0b0010
#define NOTE_E4 0b0011
#define NOTE_F4 0b0100
#define NOTE_G4 0b0101
#define NOTE_A4 0b0110
#define NOTE_B4 0b0111
#define NOTE_C5 0b1000
#define NOTE_D5 0b1001
#define NOTE_E5 0b1010
#define NOTE_F5 0b1011
#define NOTE_G5 0b1100
#define NOTE_A5 0b1101
#define NOTE_B5 0b1110
#define REST 	0b0000

#define SONG_SIZE 147

/************************** Other definitions ********************************/
struct notes{
    uint8_t segment;
};

/************************** Function Prototypes ******************************/
void GpioHandler(void *CallBackRef);

int GpioIntrInit(INTC *IntcInstancePtr, XGpio *InstancePtr,
			u16 DeviceId, u16 IntrId,
			u16 IntrMask, u32 *DataRead);

int GpioSetupIntrSystem(INTC *IntcInstancePtr, XGpio *InstancePtr,
			u16 DeviceId, u16 IntrId, u16 IntrMask);

void GpioDisableIntr(INTC *IntcInstancePtr, XGpio *InstancePtr,
			u16 IntrId, u16 IntrMask);

void UpdateSegments(struct notes* sequence);

void UpdateLeds(int points);

void FinishGame(int score, int highestSt);

/************************** Variable Definitions *****************************/
XGpio Gpio;			// Buttons GPIO
XGpio Segments[8];	// 7-Segment GPIO
XGpio Leds;			// Leds GPIO
XGpio Sound;		// Sound driver GPIO

INTC Intc;			// Interrupt controller
static u16 GlobalIntrMask;	// GPIO channel mask that is needed by the Interrupt Handler

u32 DataRead;				// Data read from button interrupt
int temp;					// Temporary variable to hold current note to display
int cnt = 0;				// Song index
int points = 0;				// Total points
int currentStreak = 0;		// Current streak to be displayed in LEDs
int hStreak = 0;			// Highest streak
struct notes ini;			// Empty
struct notes sequence[8];	// Sequence of notes to display
volatile uint8_t correctPress = 0;	// Flag to check if player pressed correctly

// Song vector that contains notes to display in 7-seg displays
int song[SONG_SIZE] = {
	// Quando oiei a terra ardendo
	1,2,1,1,
	3,3,3,3,1,1,
	2,2,2,2,2,2,
	// Qual fogueira de S�o Jo�o
	1,2,1,1,
	3,3,3,3,
	2,2,1,1,1,1,0,
	// Eu preguntei a Deus do c�u, uai
	1,1,2,2,2,3,3,0,
	3,3,2,1,1,2,2,0,
	// Por que tamanha judia��o?
	3,2,2,1,1,2,2,0,
	3,2,1,1,1,1,1,0,
	// Eu preguntei a Deus do c�u, uai
	1,1,2,2,2,3,3,0,
	3,3,2,1,1,2,2,0,
	// Por que tamanha judia��o?
	3,2,2,1,1,2,2,0,
	3,2,1,1,1,
	// Best Riff in history
	3,1,2,1,3,1,2,1,
	3,1,2,1,1,2,2,2,
	3,1,2,1,3,1,2,1,
	3,1,2,1,1,2,
	2,2,2,2,2,2,2,2,
	2,2,2,2,2,2,2,2,
	0,0
};

/************************** Notes vector *************************************/
/* Contains the macros to be played in order */
int melody[] = {
//	Song modified for our components
	REST,REST,REST,REST,REST,REST,REST,REST,
	// Quando oiei a terra ardendo
	NOTE_G4, NOTE_A4, NOTE_B4, NOTE_B4,
	NOTE_D5, NOTE_D5, NOTE_D5, NOTE_D5, NOTE_B4, NOTE_B4,
	NOTE_C5, NOTE_C5, NOTE_C5, NOTE_C5, NOTE_C5, NOTE_C5,
	// Qual fogueira de S�o Jo�o
	NOTE_G4, NOTE_A4, NOTE_B4, NOTE_B4,
	NOTE_D5, NOTE_D5, NOTE_D5, NOTE_D5,
	NOTE_C5, NOTE_C5, NOTE_B4, NOTE_B4, NOTE_B4, NOTE_B4, REST,
	// Eu preguntei a Deus do c�u, uai
	NOTE_G4, NOTE_G4, NOTE_A4, NOTE_B4, NOTE_B4, NOTE_D5, NOTE_D5, REST,
	NOTE_D5, NOTE_C5, NOTE_B4, NOTE_G4, NOTE_G4, NOTE_C5, NOTE_C5, REST,
	// Por que tamanha judia��o?
	NOTE_C5, NOTE_B4, NOTE_A4, NOTE_A4, NOTE_A4, NOTE_B4, NOTE_B4, REST,
	NOTE_B4, NOTE_A4, NOTE_G4, NOTE_G4, NOTE_G4, NOTE_G4, NOTE_G4, REST,
	// Eu preguntei a Deus do c�u, uai
	NOTE_G4, NOTE_G4, NOTE_A4, NOTE_B4, NOTE_B4, NOTE_D5, NOTE_D5, REST,
	NOTE_D5, NOTE_C5, NOTE_B4, NOTE_G4, NOTE_G4, NOTE_C5, NOTE_C5, REST,
	// Por que tamanha judia��o?
	NOTE_C5,NOTE_B4,NOTE_A4,NOTE_A4,NOTE_A4,NOTE_B4,NOTE_B4,REST,
	NOTE_B4, NOTE_A4,NOTE_G4,NOTE_G4,NOTE_G4,
	// Best Riff in history
	NOTE_F5, NOTE_D5, NOTE_E5, NOTE_C5, NOTE_D5, NOTE_B4, NOTE_C5, NOTE_A4,
	NOTE_B4, NOTE_G4, NOTE_A4, NOTE_G4, NOTE_E4, NOTE_G4, NOTE_G4, NOTE_G4,
	NOTE_F5, NOTE_D5, NOTE_E5, NOTE_C5, NOTE_D5, NOTE_B4, NOTE_C5, NOTE_A4,
	NOTE_B4, NOTE_G4, NOTE_A4, NOTE_G4, NOTE_E4, NOTE_G4,
	NOTE_G4, NOTE_G4, NOTE_G4, NOTE_G4, NOTE_G4, NOTE_G4, NOTE_G4, NOTE_G4,
	NOTE_G4, NOTE_G4, NOTE_G4, NOTE_G4, NOTE_G4, NOTE_G4, NOTE_G4, NOTE_G4,
	REST,REST

//	Scale with all the notes possible
//	NOTE_C4, NOTE_D4, NOTE_E4, NOTE_F4, NOTE_G4, NOTE_A4, NOTE_B4,
//	NOTE_C5, NOTE_D5, NOTE_E5, NOTE_F5, NOTE_G5, NOTE_A5, NOTE_B5, REST

//	Original song from Arduino sketch
//  Asa branca - Luiz Gonzaga
//  Score available at https://musescore.com/user/190926/scores/181370
//	NOTE_G4,8, NOTE_A4,8, NOTE_B4,4, NOTE_D5,4, NOTE_D5,4, NOTE_B4,4,
//	NOTE_C5,4, NOTE_C5,2, NOTE_G4,8, NOTE_A4,8,
//	NOTE_B4,4, NOTE_D5,4, NOTE_D5,4, NOTE_C5,4,
//
//	NOTE_B4,2, REST,8, NOTE_G4,8, NOTE_G4,8, NOTE_A4,8,
//	NOTE_B4,4, NOTE_D5,4, REST,8, NOTE_D5,8, NOTE_C5,8, NOTE_B4,8,
//	NOTE_G4,4, NOTE_C5,4, REST,8, NOTE_C5,8, NOTE_B4,8, NOTE_A4,8,
//
//	NOTE_A4,4, NOTE_B4,4, REST,8, NOTE_B4,8, NOTE_A4,8, NOTE_G4,8,
//	NOTE_G4,2, REST,8, NOTE_G4,8, NOTE_G4,8, NOTE_A4,8,
//	NOTE_B4,4, NOTE_D5,4, REST,8, NOTE_D5,8, NOTE_C5,8, NOTE_B4,8,
//
//	NOTE_G4,4, NOTE_C5,4, REST,8, NOTE_C5,8, NOTE_B4,8, NOTE_A4,8,
//	NOTE_A4,4, NOTE_B4,4, REST,8, NOTE_B4,8, NOTE_A4,8, NOTE_G4,8,
//	NOTE_G4,4, NOTE_F5,8, NOTE_D5,8, NOTE_E5,8, NOTE_C5,8, NOTE_D5,8, NOTE_B4,8,
//
//	NOTE_C5,8, NOTE_A4,8, NOTE_B4,8, NOTE_G4,8, NOTE_A4,8, NOTE_G4,8, NOTE_E4,8, NOTE_G4,8,
//	NOTE_G4,4, NOTE_F5,8, NOTE_D5,8, NOTE_E5,8, NOTE_C5,8, NOTE_D5,8, NOTE_B4,8,
//	NOTE_C5,8, NOTE_A4,8, NOTE_B4,8, NOTE_G4,8, NOTE_A4,8, NOTE_G4,8, NOTE_E4,8, NOTE_G4,8,
//	NOTE_G4,-2, REST,4
};

/************************** Main *********************************************/
#ifndef TESTAPP_GEN
int main(void)
{
	// Initializing GPIO interrupts
	GpioIntrInit(&Intc, &Gpio, GPIO_DEVICE_ID, INTC_GPIO_INTERRUPT_ID, GPIO_CHANNEL1, &DataRead);
	// Initializing blank displays
	ini.segment = 0b00000000;
	for(int i=0; i<8; i++){
		sequence[i] = ini;
	}
	// Main game loop
	while(cnt<SONG_SIZE){
		// Scrolls displays down by 1 and checks if player pressed correctly
		UpdateSegments(sequence);
		// Increments counter to next note
        cnt++;
        temp = song[cnt];
		// Updates LEDs visual of combo/streak
		UpdateLeds(currentStreak);
		// Exits loop if BTNL is pressed
		if(DataRead == 0b00000100){
			XGpio_DiscreteWrite(&Sound, 2, 0);
			break;
		}
	}
	// Displays 'Goog Job' message
	FinishGame(points, hStreak);
	// Disables interrupts
	GpioDisableIntr(&Intc, &Gpio, INTC_GPIO_INTERRUPT_ID, GPIO_CHANNEL1);

	return XST_SUCCESS;
}
#endif

/************************** Updates segments *********************************/
/* Scrolls displays down by 1 and checks if player pressed correctly */
void UpdateSegments(struct notes* sequence){
	// Check if player pressed correctly and gives points accordingly
	if(correctPress){
		currentStreak++;
		correctPress = 0;
		if(currentStreak>hStreak){
			hStreak = currentStreak;
		}
		points++;
	}
	else if(sequence[7].segment == 0x00){ }
	else{
		currentStreak = 0;
	}
	// Scrolls displays
    for(int i = 7; i > 0; i--){
        sequence[i] = sequence[i-1];
    }
    // Translates new note to 7-segment vector
    // and loads into top display
    if(temp == 1){
        sequence[0].segment = 0b01000000;
    }else if(temp == 2){
        sequence[0].segment = 0b00000001;
    }else if(temp == 3){
        sequence[0].segment = 0b00001000;
    }else{
        sequence[0].segment = 0b00000000;
    }
    // Puts current notes to displays
	for(int i=0; i<8; i++){
		XGpio_DiscreteWrite(&Segments[i], 1, ~sequence[i].segment);
	}
	// Outputs current note to sound driver
	XGpio_DiscreteWrite(&Sound, 2, 0);
	MB_Sleep(50);
	XGpio_DiscreteWrite(&Sound, 2, melody[cnt]);
	MB_Sleep(300);
}

/************************** Updates LEDs visual ******************************/
/* Increases if player pressed correctly, zeroes if pressed incorrectly or
 * missed a note */
void UpdateLeds(int points){
	uint16_t streak = 1;
	for(int i=0; i<points; i++){
		streak *= 2;
	}
	streak--;
	XGpio_DiscreteWrite(&Leds, 1, streak);
}

/************************** Displays 'You rock' message **********************/
void FinishGame(int score, int highestSt){
	XGpio_DiscreteWrite(&Segments[0], 1, 0b1000100);
	XGpio_DiscreteWrite(&Segments[1], 1, 0b1100010);
	XGpio_DiscreteWrite(&Segments[2], 1, 0b1100011);
	XGpio_DiscreteWrite(&Segments[3], 1, 0b1111111);
	XGpio_DiscreteWrite(&Segments[4], 1, 0b1111010);
	XGpio_DiscreteWrite(&Segments[5], 1, 0b1100010);
	XGpio_DiscreteWrite(&Segments[6], 1, 0b1110010);
	XGpio_DiscreteWrite(&Segments[7], 1, 0b1101000);
	xil_printf("Congratulations! You hit %d%% of the notes!\r\nScore: %d\r\nHighest Streak: %d\r\n", (score*100)/SONG_SIZE, score, highestSt);
	MB_Sleep(5000);
}

/************************** Interrupt Handler for buttons ********************/
void GpioHandler(void *CallbackRef)
{
	XGpio *GpioPtr = (XGpio *)CallbackRef;
	DataRead = XGpio_DiscreteRead(GpioPtr, 1);
	// Translates input from button vector to 7-seg vector
	if(DataRead == 16){
		DataRead = 8;
	}else if(DataRead == 2){
		DataRead = 64;
	}else if(DataRead == 1){
		DataRead = 1;
	}
	// Checks if button pressed equals note currently displayed
	if( (DataRead == sequence[7].segment) && sequence[7].segment != 0 ){
		correctPress = 1;
	}
	// If pressed when there's no note, reset streak
	if( (DataRead != 0) && (sequence[7].segment == 0) ){
		currentStreak = 0;
	}
	// Clear the interrupt
	XGpio_InterruptClear(GpioPtr, GlobalIntrMask);
}

/************************** GPIO initializer *********************************/
int GpioIntrInit(INTC *IntcInstancePtr, XGpio* InstancePtr, u16 DeviceId,
			u16 IntrId, u16 IntrMask, u32 *DataRead)
{
	int Status;
	// Initializes 7-segment drivers
	XGpio_Initialize(&Segments[0], XPAR_AXI_GPIO_0_DEVICE_ID);
	XGpio_Initialize(&Segments[1], XPAR_AXI_GPIO_1_DEVICE_ID);
	XGpio_Initialize(&Segments[2], XPAR_AXI_GPIO_2_DEVICE_ID);
	XGpio_Initialize(&Segments[3], XPAR_AXI_GPIO_3_DEVICE_ID);
	XGpio_Initialize(&Segments[4], XPAR_AXI_GPIO_4_DEVICE_ID);
	XGpio_Initialize(&Segments[5], XPAR_AXI_GPIO_5_DEVICE_ID);
	XGpio_Initialize(&Segments[6], XPAR_AXI_GPIO_6_DEVICE_ID);
	XGpio_Initialize(&Segments[7], XPAR_AXI_GPIO_7_DEVICE_ID);
	// Initializes LED driver
	XGpio_Initialize(&Leds, XPAR_AXI_GPIO_LEDS_DEVICE_ID);
	// Initializes Sound driver
	XGpio_Initialize(&Sound, XPAR_AXI_GPIO_NOTES_DEVICE_ID);
	XGpio_DiscreteWrite(&Sound, 1, 1);
	XGpio_DiscreteWrite(&Sound, 2, 0);
	// Initializes Button driver with self-tests and interrupts
	Status = XGpio_Initialize(InstancePtr, DeviceId);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
	Status = GpioSetupIntrSystem(IntcInstancePtr, InstancePtr, DeviceId, IntrId, IntrMask);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
	return Status;
}


/************************** Button interrupt initializer **********************/
/* Copied directly from Xilinx' example because we couldn't make it work
 * by ourselves */
int GpioSetupIntrSystem(INTC *IntcInstancePtr, XGpio *InstancePtr,
			u16 DeviceId, u16 IntrId, u16 IntrMask)
{
	int Result;

	GlobalIntrMask = IntrMask;

#ifdef XPAR_INTC_0_DEVICE_ID

#ifndef TESTAPP_GEN
	/*
	 * Initialize the interrupt controller driver so that it's ready to use.
	 * specify the device ID that was generated in xparameters.h
	 */
	Result = XIntc_Initialize(IntcInstancePtr, INTC_DEVICE_ID);
	if (Result != XST_SUCCESS) {
		return Result;
	}
#endif /* TESTAPP_GEN */

	/* Hook up interrupt service routine */
	XIntc_Connect(IntcInstancePtr, IntrId,
		      (Xil_ExceptionHandler)GpioHandler, InstancePtr);

	/* Enable the interrupt vector at the interrupt controller */
	XIntc_Enable(IntcInstancePtr, IntrId);

#ifndef TESTAPP_GEN
	/*
	 * Start the interrupt controller such that interrupts are recognized
	 * and handled by the processor
	 */
	Result = XIntc_Start(IntcInstancePtr, XIN_REAL_MODE);
	if (Result != XST_SUCCESS) {
		return Result;
	}
#endif /* TESTAPP_GEN */

#else /* !XPAR_INTC_0_DEVICE_ID */

#ifndef TESTAPP_GEN
	XScuGic_Config *IntcConfig;

	/*
	 * Initialize the interrupt controller driver so that it is ready to
	 * use.
	 */
	IntcConfig = XScuGic_LookupConfig(INTC_DEVICE_ID);
	if (NULL == IntcConfig) {
		return XST_FAILURE;
	}

	Result = XScuGic_CfgInitialize(IntcInstancePtr, IntcConfig,
					IntcConfig->CpuBaseAddress);
	if (Result != XST_SUCCESS) {
		return XST_FAILURE;
	}
#endif /* TESTAPP_GEN */

	XScuGic_SetPriorityTriggerType(IntcInstancePtr, IntrId,
					0xA0, 0x3);

	/*
	 * Connect the interrupt handler that will be called when an
	 * interrupt occurs for the device.
	 */
	Result = XScuGic_Connect(IntcInstancePtr, IntrId,
				 (Xil_ExceptionHandler)GpioHandler, InstancePtr);
	if (Result != XST_SUCCESS) {
		return Result;
	}

	/* Enable the interrupt for the GPIO device.*/
	XScuGic_Enable(IntcInstancePtr, IntrId);
#endif /* XPAR_INTC_0_DEVICE_ID */

	/*
	 * Enable the GPIO channel interrupts so that push button can be
	 * detected and enable interrupts for the GPIO device
	 */
	XGpio_InterruptEnable(InstancePtr, IntrMask);
	XGpio_InterruptGlobalEnable(InstancePtr);

	/*
	 * Initialize the exception table and register the interrupt
	 * controller handler with the exception table
	 */
	Xil_ExceptionInit();

	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
			 (Xil_ExceptionHandler)INTC_HANDLER, IntcInstancePtr);

	/* Enable non-critical exceptions */
	Xil_ExceptionEnable();

	return XST_SUCCESS;
}

/************************** Interrupt disabler ********************************/
void GpioDisableIntr(INTC *IntcInstancePtr, XGpio *InstancePtr,
			u16 IntrId, u16 IntrMask)
{
	XGpio_InterruptDisable(InstancePtr, IntrMask);
#ifdef XPAR_INTC_0_DEVICE_ID
	XIntc_Disable(IntcInstancePtr, IntrId);
#else
	/* Disconnect the interrupt */
	XScuGic_Disable(IntcInstancePtr, IntrId);
	XScuGic_Disconnect(IntcInstancePtr, IntrId);
#endif
	return;
}


