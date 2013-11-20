# cookbook: uru
# recipe: upgrade

case node['platform_family']
when 'debian', 'rhel'
  file "#{node['uru']['unix']['extract_path']}/uru_rt" do
    action :delete
  end
when 'mac_os_x'
  file "#{node['uru']['mac']['extract_path']}/uru_rt" do
    action :delete
  end
end

