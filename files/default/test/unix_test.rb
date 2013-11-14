require 'minitest/spec'

describe_recipe 'uru::unix' do

  #before do
  #  node.set['uru']['extract_path'] = '/home/vagrant/bin'
  #end

  #it 'pulls down the source file' do
  #  file("#{Chef::Config[:file_cache_path]}/uru-0.6.3-78eeabd-linux-x86.tar.gz").must_exist
  #end

  #it 'extracts the file to the correct path' do
  #  file("#{node['uru']['extract_path']}/uru_rt").must_exist
  #end

  #it 'sets the uru_rt file as executable' do
  #  file("#{node['uru']['extract_path']}/uru_rt").must_have(:mode, "755")
  #end

  #it 'adds the extract path to the PATH' do
  #  file("#{ENV['HOME']}/.bash_profile").must_include 'eval "$(uru_rt admin install)"'
  #end

end
