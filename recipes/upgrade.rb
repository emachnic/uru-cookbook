# cookbook: uru
# recipe: upgrade

if platform_family?('debian', 'rhel', 'mac_os_x')
  file "#{node['uru']['home_dir']}/bin/uru_rt" do
    action :delete
  end
end

