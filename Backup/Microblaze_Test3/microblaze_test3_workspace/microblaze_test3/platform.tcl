# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\vikto\Experiments\VitisWorkspace\microblaze_test3_workspace\microblaze_test3\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\vikto\Experiments\VitisWorkspace\microblaze_test3_workspace\microblaze_test3\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {microblaze_test3}\
-hw {C:\Users\vikto\Experiments\Microblaze_Test3\design_1_wrapper.xsa}\
-proc {microblaze_0} -os {standalone} -out {C:/Users/vikto/Experiments/VitisWorkspace/microblaze_test3_workspace}

platform write
platform generate -domains 
platform active {microblaze_test3}
platform generate
platform config -updatehw {C:/Users/vikto/Experiments/Microblaze_Test3/design_1_wrapper.xsa}
platform generate -domains 
