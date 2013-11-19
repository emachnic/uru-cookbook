#
# Cookbook Name:: uru
# Recipe:: default
#
# Copyright 2013, Evan Machnic
#
# All rights reserved - Do Not Redistribute
#

if node['uru']['action'] == 'upgrade'
  include_recipe 'uru::upgrade'
end

case node['platform_family']
when 'debian', 'rhel'
  include_recipe 'uru::unix'
when 'mac_os_x'
  include_recipe 'uru::mac'
when 'windows'
  include_recipe 'uru::windows'
end

include_recipe 'uru::install'

