#!/bin/bash

# Shell script to install Vagrant & VirtualBox
##############################################

# Copy virtualbox repo to yum repo
    cp ~/chef-repo/yum-repo/virtualbox.repo /etc/yum.repos.d/.
    
# Download VirtualBox
    rpm -Uvh http://download.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
    
# Install required packages
    yum install gcc make patch  dkms qt libgomp 
    yum install kernel-headers kernel-devel fontforge binutils glibc-headers glibc-devel
    
# Setup Environment Variables
    export KERN_DIR=/usr/src/kernels/2.6.32-504.3.3.el6.x86_64
    
# Install Virtualbox & Setup
    yum install VirtualBox-5.0
    service vboxdrv setup
    
# Start Virtualbox
    # virtualbox &
