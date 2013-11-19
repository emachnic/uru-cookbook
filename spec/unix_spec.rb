require 'spec_helper'

describe 'uru::unix' do

  let(:chef_run) do
    ChefSpec::Runner.new(platform: 'ubuntu', version: '12.04') do |node|
      node.set['uru']['username'] = 'vagrant'
      node.set['uru']['src_filename'] = 'uru-0.6.4--linux-x86.tar.gz'
    end.converge(described_recipe)
  end

  it 'creates the extract path directory if needed' do
    expect(chef_run).to create_directory('/home/vagrant/bin')
  end

  it 'changes permissions on the uru_rt file' do
    expect(chef_run).to create_file('/home/vagrant/bin/uru_rt').
      with(mode: 0755)
  end

end
