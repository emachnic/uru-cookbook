# cookbook: uru
# recipe: install

bash 'install_uru' do
  cwd  node['uru']['home_dir']
  user node['uru']['username']
  code <<-EOH
    echo 'eval "$(uru_rt admin install)"' >> .bash_profile
    EOH
  action :run
  not_if "cat .bash_profile | grep 'eval \"$(uru_rt admin install)\"'"
end
