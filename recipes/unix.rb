src_filepath = "#{node['uru']['extract_path']}/#{node['uru']['src_filename']}"

directory "#{node['uru']['extract_path']}" do
  action :create
end

remote_file src_filepath do
  source "#{node['uru']['src_url']}#{node['uru']['src_filename']}"
end

bash "install_uru" do
  cwd ::File.dirname(src_filepath)
  code <<-EOH
    tar xzf #{node['uru']['src_filename']} -C #{node['uru']['extract_path']}
    EOH
  not_if { ::File.exists? "#{node['uru']['extract_path']}/uru_rt" }
end

file "#{node['uru']['extract_path']}/uru_rt" do
  mode 0755
  action :create
end
