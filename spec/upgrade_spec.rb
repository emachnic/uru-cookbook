require 'spec_helper'

describe 'uru::upgrade' do

  let(:chef_run) do
    # Platform doesn't matter but using Ubuntu for easier testing since we
    # don't have access to node object in specs.
    ChefSpec::Runner.new(platform: 'ubuntu', version: '12.04') do |node|
      node.set['uru']['action']   = 'upgrade'
      node.set['uru']['username'] = 'vagrant'
    end.converge(described_recipe)
  end

  it 'removes the old uru_rt file' do
    expect(chef_run).to delete_file('/home/vagrant/bin/uru_rt')
  end

end
