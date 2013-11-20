require 'spec_helper'

describe 'uru::default' do

  before do
    stub_command("cat .bash_profile | grep 'eval \"$(uru_rt admin install)\"'").and_return(false)
  end

  context 'upgrade' do

    let(:chef_run) do
      ChefSpec::Runner.new do |node|
        node.set['uru']['action'] = 'upgrade'
      end.converge(described_recipe)
    end

    it 'includes the upgrade recipe' do
      expect(chef_run).to include_recipe('uru::upgrade')
    end

  end

  context 'unix' do

    let(:chef_run) do
      ChefSpec::Runner.new(platform: 'ubuntu', version: '12.04').converge(described_recipe)
    end

    it 'includes the unix recipe' do
      expect(chef_run).to include_recipe('uru::unix')
    end

    it "doesn't include the mac recipe" do
      expect(chef_run).to_not include_recipe('uru::mac')
    end

    it "doesn't include the windows recipe" do
      expect(chef_run).to_not include_recipe('uru::windows')
    end

  end

  context 'mac' do

    let(:chef_run) do
      ChefSpec::Runner.new(platform: 'mac_os_x', version: '10.8.2').converge(described_recipe)
    end

    it 'includes the unix recipe' do
      expect(chef_run).to include_recipe('uru::unix')
    end

    it "doesn't include the windows recipe" do
      expect(chef_run).to_not include_recipe('uru::windows')
    end

  end

  context 'windows' do

    let(:chef_run) do
      ChefSpec::Runner.new(platform: 'windows', version: '2008R2').converge(described_recipe)
    end
    
    it 'includes the windows recipe' do
      expect(chef_run).to include_recipe('uru::windows')
    end

    it "doesn't include the unix recipe" do
      expect(chef_run).to_not include_recipe('uru::unix')
    end

    it "doesn't include the mac recipe" do
      expect(chef_run).to_not include_recipe('uru::mac')
    end

  end

end
