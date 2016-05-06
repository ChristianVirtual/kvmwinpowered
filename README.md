# kvmwinpowered
Steps and configuration to setup a virtual folding system with GPU (host: Linux, Guest: Windows)

In the past and present I use [free ESXi](https://www.vmware.com/products/vsphere-hypervisor/gettingstarted) for virtualizations. It is a robust system I run a number of serices on in my home setup. The biggest downside is the lack of support for reliable PCI passthrough for consumer-grade GPUs.

That part is rather important to me as I'm involved in [Folding@home](http://folding.stanford.edu) distributed computing project from Stanford University.

With this repositiory I want to share my experience gained and the steps needed to setup a QEMU/KVM based virtual environment to be used for folding on GPUs. With two different OS.
Main OS is Linux (CentOS 7); as guest OS I wanted to give Windows a chance.


The main purpose for this build was to enable occational testing of both Linux and Windows folding environments; the main focus was not on performance but on diversity of OS involved.


![Architecture](http://imageshack.com/a/img922/452/yT83Ux.png)

1. [Hardware](hardware.md)
1. Basic Setup for CentOS 7
Just insert the CD or DVD and follow the instructions (not covert here)

2. Install new Linux sources
The distribution kernel from CentOS 7 is a bit older and didn't supported a relevant parameter. Therefore I needed to compile my own kernel. 
Also as newer Kernel > 4.1 has better support for QEMU/KVM that effort was required

3. Get QEMU 2.5.1 
Don't get me wrong, I like the stabilty approach from CentOS 7 and not have always the latest and newest stuff installed. But in this case I needed to replace the QEMU 2.0.0 version of the CentOS repo with something fresher.
Therefore I decided to install the sources from QEMU 2.5.1 and compiled the component myself. This also allowed to tweak a bit on the parmeter and enabled GTK UI for example alloing running QEMU direct unter Gnome in a window.

