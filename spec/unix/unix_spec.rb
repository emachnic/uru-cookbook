require 'spec_helper'

describe 'uru::unix' do

  let(:chef_run) do
    ChefSpec::Runner.new(platform: 'ubuntu', version: '12.04') do |node|
      node.set['uru']['extract_path'] = '/home/vagrant/bin'
      node.set['uru']['src_url']      = 'https://bitbucket.org/jonforums/uru/downloads/'
      node.set['uru']['src_filename'] = 'uru-0.6.3-78eeabd-linux-x86.tar.gz'
    end.converge(described_recipe)
  end

  it 'pulls down the source file' do
    expect(chef_run).to create_remote_file(
      "/home/vagrant/bin/uru-0.6.3-78eeabd-linux-x86.tar.gz"
    )
  end

  it 'creates the extract path directory if needed' do
    expect(chef_run).to create_directory('/home/vagrant/bin')
  end

  it 'runs the bash install script' do
    expect(chef_run).to run_bash('install_uru')
  end

  it 'creates changes permissions on the uru_rt file' do
    expect(chef_run).to create_file('/home/vagrant/bin/uru_rt').
      with(mode: 0755)
  end

end
