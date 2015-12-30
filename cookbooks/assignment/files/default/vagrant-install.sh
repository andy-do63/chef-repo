#!/bin/bash

# Shell script to install Vagrant
#################################

# Download Vagrant rpm for CentOS 64-bit
    cd ~
    wget https://releases.hashicorp.com/vagrant/1.8.1/vagrant_1.8.1_x86_64.rpm -O vagrant_1.8.1_x86_64.rpm
    
# Install rpm package
    sudo rpm -i vagrant_1.8.1_x86_64.rpm
    
# Verify Installation
    vagrant -v
