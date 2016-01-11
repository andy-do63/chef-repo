#
# Cookbook Name:: Assignment
# Recipe:: default
# Copyright (c) 2015 Andy Do, All Rights Reserved
#

# Cook community nginx recipe
include_recipe 'nginx'

# Override nginx default index.html
template '/usr/share/nginx/html/index.html' do
  source 'index.html.erb'
end
