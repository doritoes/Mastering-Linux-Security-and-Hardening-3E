@ECHO OFF
REM Create the Ubuntu VM using unattended process
REM Still in testing process
REM Still does interactive setup despite my efforts
REM missing step - enabling Bridge mode on interface instead of NAT
PATH|find /i "Oracle\VirtualBox" >nul || set path=%PATH%;C:\Program Files\Oracle\VirtualBox
SET VM=Ubuntu22
SET VMFILESPATH=%homedrive%%homepath%\VirtualBox VMs
REN C:\LinuxSecBook\ISOs\ubuntu-22.04.*-live-server-amd64.iso UBUNTUBASE.iso >nul
VBoxManage createvm --name %VM% --ostype Ubuntu22_LTS_64 --register
CD %VMFILESPATH%\%VM%\
VBoxManage createmedium disk --filename=%VM%.vdi --size=25000 --format=VDI
VBoxManage storagectl %VM% --name "IDE" --add IDE --controller PIIX4
VBoxManage storagectl %VM% --name "SATA" --add SAS --controller LsiLogicSas
VBoxManage storageattach %VM% --storagectl "SATA" --port 0 --device 0 --type hdd --medium %VM%.vdi
VBoxManage modifyvm %VM%  --boot1 disk --boot2 DVD --boot3 none --boot4 none
VBoxManage modifyvm %VM% --usb off
VBoxManage modifyvm %VM% --audio-driver none
VBoxManage modifyvm %VM% --cpus 2
VBoxManage modifyvm %VM% --memory 1024 --vram 128
VBoxManage modifyvm %VM% --hwvirtex on
VBoxManage modifyvm %VM% --nested-hw-virt on
VBoxManage modifyvm %VM% --ioapic on    
VBoxManage modifyvm %VM% --pae off
VBoxManage modifyvm %VM% --acpi on  
VBoxManage modifyvm %VM% --paravirtprovider default
VBoxManage modifyvm %VM% --nestedpaging on
VBoxManage modifyvm %VM% --keyboard ps2
VBoxManage modifyvm %VM% --uart1 0x03F8 4
VBoxManage modifyvm %VM% --uartmode1 disconnected
VBoxManage modifyvm %VM% --uarttype1 16550A
VBoxManage modifyvm %VM% --nic1 nat
VBoxManage modifyvm %VM% --nictype1 82540EM
VBoxManage modifyvm %VM% --macaddress1 auto
VBoxManage modifyvm %VM% --cableconnected1 on
VBoxManage modifyvm %VM% --intnet1 Net_DeadEnd
VBoxManage modifyvm %VM% --graphicscontroller vmsvga
VBoxManage unattended install %VM% --iso=C:\LinuxSecBook\ISOs\UBUNTUBASE.iso --user="tux" --password="hardLINUXp@$$" --full-user-name="Seth Holcomb" --install-additions --hostname=ubuntu.mylinux.lab --country=US --language=en-US --locale=en_US --time-zone=ET --start-vm=gui
CD C:\LinuxSecBook\Scripts
