# cookbook: uru
# recipe: upgrade

file "#{node['uru']['extract_path']}/uru_rt" do
  action :delete
end

