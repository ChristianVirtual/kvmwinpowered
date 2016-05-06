# Project KVM-based virtual GPU folding (kvmwinpowered)
Steps and configuration to setup a virtual folding system with GPU (host: Linux, Guest: Windows)

In the past and present I use [free ESXi](https://www.vmware.com/products/vsphere-hypervisor/gettingstarted) for virtualizations. It is a robust system for a number of sevices used privately. The biggest downside is the lack of support for reliable PCI passthrough of consumer-grade GPUs.

That part is rather important to me as I'm involved in [Folding@home](http://folding.stanford.edu) distributed computing project from Stanford University.

With this repositiory I want to share my experience gained and the steps needed to setup a QEMU/KVM based virtual environment to be used for folding on GPUs. With two different OS.


The main purpose for this build was to enable occational testing of both Linux and Windows folding environments; the main focus was not on performance but on diversity of OS involved.


Main OS is Linux (CentOS 7); as guest OS I wanted to Windows; had an unused 8.1 Pro key laying around 
![Architecture](http://imageshack.com/a/img922/452/yT83Ux.png)

1. [Hardware](https://github.com/ChristianVirtual/kvmwinpowered/blob/master/hardware.md)
2. [Software](https://github.com/ChristianVirtual/kvmwinpowered/blob/master/software.md)
3. [References & Credits](https://github.com/ChristianVirtual/kvmwinpowered/blob/master/credits.md)


