# cookbook: uru
# recipe: upgrade

file "#{node['uru']['unix']['extract_path']}/uru_rt" do
  action :delete
end

