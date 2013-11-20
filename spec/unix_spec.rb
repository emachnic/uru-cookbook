require 'spec_helper'

describe 'uru::unix' do

  context 'unix' do
    let(:chef_run) do
      ChefSpec::Runner.new(platform: 'ubuntu', version: '12.04') do |node|
        node.set['uru']['username'] = 'vagrant'
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

  context 'mac' do
    let(:chef_run) do
      ChefSpec::Runner.new(platform: 'mac_os_x', version: '10.8.2') do |node|
        node.set['uru']['username'] = 'evanmachnic'
      end.converge(described_recipe)
    end

    it 'creates the extract path directory if needed' do
      expect(chef_run).to create_directory('/Users/evanmachnic/bin')
    end
  end

end
