# Project KVM-based virtual GPU folding (kvmwinpowered)
Steps and configuration to setup a virtual folding system with GPU (host: Linux, Guest: Windows)

In the past and present I use [free ESXi](https://www.vmware.com/products/vsphere-hypervisor/gettingstarted) for virtualizations. It is a robust system for a number of sevices used privately. The biggest downside though is the lacking support of reliable PCI passthrough of consumer-grade GPUs.


That part is rather important to me as I'm involved in [Folding@home](http://folding.stanford.edu) distributed computing project from Stanford University.

Within this context I developed [FAHMM](http://www.fahmm.net), a mobile monitoring application  running on iOS devives. Until recently I was fine with only Linux as folding environment; but changes in the functionlaity required me to have at least one Windows-based GPU-folding client available to ensure smooth operation of the app. 


With this repositiory I want to share my experience and the steps taken which lead to a running setup. Based on upfront research   a QEMU/KVM based virtual environment looked to be most promissing. 


Main OS is Linux (CentOS 7); as guest OS I wanted to Windows; had an unused 8.1 Pro key laying around 
![Architecture](http://imageshack.com/a/img922/452/yT83Ux.png)

1. [Hardware](https://github.com/ChristianVirtual/kvmwinpowered/blob/master/hardware.md)
2. [Software on the host](https://github.com/ChristhianVirtual/kvmwinpowered/blob/master/software_host.md)
3. [Software on the Windows guest](https://github.com/ChristianVirtual/kvmwinpowered/blob/master/software_win_guest.md)
4. [Software on the Linux guest - Later, sorry](https://github.com/ChristianVirtual/kvmwinpowered/blob/master/software_linux_guest.md)
5. [References & Credits](https://github.com/ChristianVirtual/kvmwinpowered/blob/master/credits.md)


