#
# Cookbook Name:: Assignment
# Recipe:: default
# Copyright (c) 2015 Andy Do, All Rights Reserved
#

cookbook_file "/tmp/chef-init.sh" do
    source "chef-init.sh"
    mode 0755
end

execute "Chef Init" do
   command "sh /tmp/chef-init.sh"
end


