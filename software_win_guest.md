# Software II - Guest OS: Windows 8.1 Pro


1. Windows 8.1 Pro 64 Bit as OS for the guest

Standard installation of Windows basically; you need your own product key for activation.

Tricky part was was the basic installation to turn off the standard VGA emulation and force Windows to use the GPU card for output. This eventually avoided trouble during startup


2. nV-CUDA driver 7.5


  108  lspci
  109  grep -v '(vmx|svm)' /proc/cpuinfo 

112   sudo yum install kvm virt-manager libvirt virt-install qemu-kvm xauth dejavu-lgc-sans-fonts

113  echo "net.ipv4.ip_forward = 1" | sudo tee /etc/sysctl.d/99-ipforward.conf

114  sudo sysctl -p /etc/sysctl.d/99-ipforward.conf 

 278  lspci -nn | grep VGA
 





