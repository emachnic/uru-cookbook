default['uru']['action']  = 'install'
default['uru']['src_url'] = "https://bitbucket.org/jonforums/uru/downloads/"
default['uru']['username'] = ''

if platform_family?('debian', 'rhel')
  default['uru']['src_filename'] = "uru-0.6.3-78eeabd-linux-x86.tar.gz"
  default['uru']['extract_path'] = "/home/#{node['uru']['username']}/bin"
end

