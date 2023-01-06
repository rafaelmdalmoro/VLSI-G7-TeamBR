# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\vikto\Experiments\VitisWorkspace\microblaze_test2_workspace\MicroblazeTest2\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\vikto\Experiments\VitisWorkspace\microblaze_test2_workspace\MicroblazeTest2\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {MicroblazeTest2}\
-hw {C:\Users\vikto\Experiments\MicroblazeTest2\design_1_wrapper.xsa}\
-proc {microblaze_0} -os {standalone} -out {C:/Users/vikto/Experiments/VitisWorkspace/microblaze_test2_workspace}

platform write
platform generate -domains 
platform active {MicroblazeTest2}
platform generate
platform active {MicroblazeTest2}
platform config -updatehw {C:/Users/vikto/Experiments/MicroblazeTest2/design_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/vikto/Experiments/MicroblazeTest2/design_1_wrapper.xsa}
platform generate -domains 
platform active {MicroblazeTest2}
platform generate -domains 
platform config -updatehw {C:/Users/vikto/Experiments/MicroblazeTest2/design_1_wrapper.xsa}
platform generate -domains 
platform active {MicroblazeTest2}
platform config -updatehw {C:/Users/vikto/Experiments/MicroblazeTest2/design_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/vikto/Experiments/MicroblazeTest2/design_1_wrapper.xsa}
platform generate -domains 
