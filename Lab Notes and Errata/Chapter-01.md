# Chapter 1

## Installing a virtual machine in VirtualBox, pp. 7-11
1. Step 3 on page 8 is somewhat ambiguous, or at least with VirtualBox 7.0.6 r155176
    - If you don't see the New icon from step 3, click Machine > New (or press control-N)
    - Enter name: Ubuntu22-04, CentOS7, AlmaLinux8, AlmaLinux9
    - Select Version: Ubuntu (64-bit) or the matching version, Red Hat 7.x, Red Hat 8.x, Red Hat 9.x
    - Click Next
    - Memory: default 2 GB is OK
    - Processors: 1 is OK
    - Click Next
    - The default is not 25GB, greater than the book's recommended 20GB, which is OK
    - Click Next
    - Click Finish
    - Repeat for each VM
2. Step 4 on page 8 is somewhat ambiguous, or at least with VirtualBox 7.0.6 r155176
    - Click on the VM from the list, the click Start
    - The VM will fail to boot, prompting you to enter the location of a DVD image
    - Click the Down arrow next to DVD and choose Other...
    - Browse and select the .iso iamge and click Mount and Retry Boot
    - Continue with the rest of the steps 6-10
