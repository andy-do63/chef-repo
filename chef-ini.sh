#!/bin/bash

# Shell script to intialize Chef Assignment
###########################################

# Create Folders
    cd ~
    if [ ! -d "chef-repo" ]; then
        mkdir chef-repo
    fi
    
    cd chef-repo
    if [ ! -d ".chef" ]; then
        mkdir .chef
    fi
    
    if [ ! -d "cookbooks" ]; then
        mkdir cookbooks
    fi

# Config knife
    cd ~/chef-repo/.chef
    echo "cookbook_path '~/chef-repo/cookbooks'" >> knife.rb
    
# Download nginx & dependency cookbooks
    cd ~/chef-repo/cookbooks
    knife cookbook site download nginx
    knife cookbook site download apt
    knife cookbook site download bluepill
    knife cookbook site download build-essential
    knife cookbook site download ohai
    knife cookbook site download runit
    knife cookbook site download yum-epel
    knife cookbook site download rsyslog 2.0.0
    knife cookbook site download packagecloud
    knife cookbook site download yum
    tar zxf *.gz
