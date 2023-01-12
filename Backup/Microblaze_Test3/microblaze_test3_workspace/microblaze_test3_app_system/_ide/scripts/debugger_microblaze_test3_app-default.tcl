# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\vikto\Experiments\VitisWorkspace\microblaze_test3_workspace\microblaze_test3_app_system\_ide\scripts\debugger_microblaze_test3_app-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\vikto\Experiments\VitisWorkspace\microblaze_test3_workspace\microblaze_test3_app_system\_ide\scripts\debugger_microblaze_test3_app-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent Nexys A7 -100T 210292B61B10A" && level==0 && jtag_device_ctx=="jsn-Nexys A7 -100T-210292B61B10A-13631093-0"}
fpga -file C:/Users/vikto/Experiments/VitisWorkspace/microblaze_test3_workspace/microblaze_test3_app/_ide/bitstream/download.bit
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
loadhw -hw C:/Users/vikto/Experiments/VitisWorkspace/microblaze_test3_workspace/microblaze_test3/export/microblaze_test3/hw/design_1_wrapper.xsa -regs
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow C:/Users/vikto/Experiments/VitisWorkspace/microblaze_test3_workspace/microblaze_test3_app/Debug/microblaze_test3_app.elf
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
con
