src_filepath = "#{node['uru']['src_url']}#{node['uru']['src_filename']}"
extract_path = node['uru']['unix']['extract_path']

directory extract_path do
  action :create
end

tar_extract src_filepath do
  target_dir   extract_path
  download_dir extract_path
  creates      "#{extract_path}/uru_rt"
end

file "#{extract_path}/uru_rt" do
  mode   0755
  action :create
end
