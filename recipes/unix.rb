src_filepath = "#{node['uru']['src_url']}#{node['uru']['src_filename']}"

directory "#{node['uru']['extract_path']}" do
  action :create
end

tar_extract src_filepath do
  target_dir   node['uru']['extract_path']
  download_dir node['uru']['extract_path']
  creates      "#{node['uru']['extract_path']}/uru_rt"
end

file "#{node['uru']['extract_path']}/uru_rt" do
  mode   0755
  action :create
end
