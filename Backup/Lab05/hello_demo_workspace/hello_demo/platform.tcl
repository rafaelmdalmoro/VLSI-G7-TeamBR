# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\vikto\Experiments\VitisWorkspace\hello_demo\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\vikto\Experiments\VitisWorkspace\hello_demo\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {hello_demo}\
-hw {C:\Users\vikto\Experiments\Lab05\design_1_wrapper.xsa}\
-proc {microblaze_0} -os {standalone} -out {C:/Users/vikto/Experiments/VitisWorkspace}

platform write
platform generate -domains 
platform active {hello_demo}
platform generate
