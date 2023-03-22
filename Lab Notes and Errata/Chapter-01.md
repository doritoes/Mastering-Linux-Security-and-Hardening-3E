# Chapter 1

## Installing a virtual machine in VirtualBox, pp. 7-11
1. Step 3 on page 8 is somewhat ambiguous, or at least with VirtualBox 7.0.6 r155176
    - If you don't see the New icon from step 3, click Machine > New (or press control-N)
    - Enter name: Ubuntu22-04, CentOS7, AlmaLinux8, AlmaLinux9
    - Select Version: Ubuntu (64-bit) or the matching version, Red Hat 7.x, Red Hat 8.x, Red Hat 9.x
    - Click Next
    - Memory: default 2 GB is OK
    - Processors: 2 is OK
    - Click Next
    - The defaults for Ubuntu (25GB) and the others (20GB) meet or exceed the book's recommended 20GB
    - Click Next
    - Click Finish
    - Repeat for each VM
2. Step 4 on page 8 is somewhat ambiguous, or at least with VirtualBox 7.0.6 r155176
    - Click on the VM from the list, the click Start
    - The VM will fail to boot, prompting you to enter the location of a DVD image
    - Click the Down arrow next to DVD and choose Other...
    - Browse and select the .iso iamge and click Mount and Retry Boot
    - Continue with the rest of the steps 6-10
    - Repeat for each VM
3. Kernel Panic with Ubuntu and AlmaLinux installations
    - In my Intel test environment, selecting 1 CPU core caused the panic, and changing to 2 resolved the issue
4. Missing step(s) between steps 6 and 7
    - Install the VM accepting defaults
    - Accept DHCP options
    - Server names: ubuntu, centos, almalinux8, almalinux9
    - Username: tux
    - Password: hardLINUXp@$$
    - Ubuntu specific
        - Skip option for Ubuntu Pro
        - Do not select any snaps
    - Red Hat specific
        - Ignore any "processor not tested" messages
        - Software Selection: 'Minimal Install' or 'Server' is sufficient; do not install a GUI or desktop environment (no "Server with GUI")
        - You need to click on System: Software Destination and click Done in order to continue
        - Click Network & Host Name, then the server name
        - Click User Creation, add the user tux and set the password; be sure to check "Make this user administrator", click Done
        - AlmaLinux8 doesn't show the ability to add a user until you set the root password (i.e., hardLINUXp@$$)
        - AlmaLinux9 doesn't show the ability to add a user even if you set the root password (i.e., hardLINUXp@$$); missing instructions on adding a regular user
    - Repeat for each VM

## Installing the EPEL repository on the CentOS 7 virtual machines pp. 11-12
1. If page 12 step 1 fails, check if the network interface is working correctly
    - Enable interface on boot
        - sudo vi /etc/sysconfig/network-scripts/ifcfg-enp0s3
        - change `ONBOOT=no` to `ONBOOT=yes`
        - save and quit
    - `sudo systemctl restart network`
2. Page 12 step 4 will fail on the second command if you are still in /etc/yum.repos.d
    - `sudo yum list > ~/yum_list.txt`

## Installing the EPEL repository on the AlmaLinux 8/9 virtual machines p. 12
1. If the command `sudo dnf install epel-release` fails
    - Enable interface on boot
        - sudo vi /etc/sysconfig/network-scripts/ifcfg-enp0s3
        - change `ONBOOT=no` to `ONBOOT=yes`
        - save and quit
    - `sudo systemctl restart NetworkManager`
