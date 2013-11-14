#
# Cookbook Name:: uru
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
if platform?('debian', 'ubuntu')
  include_recipe 'uru::unix'
end
