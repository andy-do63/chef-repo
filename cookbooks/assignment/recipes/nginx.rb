#
# Cookbook Name:: Assignment
# Recipe:: default
# Copyright (c) 2015 Andy Do, All Rights Reserved
#

# Create shell script from files/default
cookbook_file '/tmp/chef-init.sh' do
  source 'chef-init.sh'
  mode 0755
end

# Execute Shell Script ONLY if not yet ran
execute 'Chef Init' do
  command 'sh /tmp/chef-init.sh'

  not_if { ::File.exist?('~/chef-repo/.chef/knife.rb') }
end
