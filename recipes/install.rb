# cookbook: uru
# recipe: install

bash 'install_uru' do
  code <<-EOH
    echo 'eval "$(uru_rt admin install)"' >> #{ENV['HOME']}/.bash_profile'
    source #{ENV['HOME']}/.bash_profile
    EOH
  action :run
  not_if "cat #{ENV['HOME']}/.bash_profile | grep 'eval \"$(uru_rt admin install)\"'"
end
