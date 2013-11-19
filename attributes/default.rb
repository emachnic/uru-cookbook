default['uru']['username']     = ''

case node['platform_family']
when 'debian', 'rhel'
  platform  = 'linux'
  extension = 'tar.gz'
  default['uru']['home_dir'] = "/home/#{node['uru']['username']}"
when 'mac_os_x'
  platform  = 'darwin'
  extension = 'tar.gz'
  default['uru']['home_dir'] = "/Users/#{node['uru']['username']}"
when 'windows'
  platform  = 'windows'
  extension = '7z'
end

default['uru']['action']       = 'install'
default['uru']['version']      = '0.6.4'
default['uru']['src_url']      = "http://downloads.sourceforge.net/project/urubinaries/uru/#{node['uru']['version']}/"
default['uru']['src_filename'] = "uru-#{node['uru']['version']}-#{platform}-x86.#{extension}"
