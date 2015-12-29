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
        mkdir cookbookx
    fi

# Config knife
    cd ~/chef-repo/.chef
    echo "cookbook_path '~/chef-repo/cookbooks'" >> knife.rb
