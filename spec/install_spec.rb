require 'spec_helper'

describe 'uru::install' do

  context 'unix' do

    let(:chef_run) do
      ChefSpec::Runner.new(platform: 'ubuntu', version: '12.04') do |node|

      end.converge(described_recipe)
    end

    context 'success' do

      before do
        stub_command("cat .bash_profile | grep 'eval \"$(uru_rt admin install)\"'").and_return(false)
      end

      it 'runs the install_uru bash script' do
        expect(chef_run).to run_bash('install_uru')
      end

    end

    context 'failure' do

      before do
        stub_command("cat .bash_profile | grep 'eval \"$(uru_rt admin install)\"'").and_return(true)
      end

      it "doesn't run the install_uru bash script" do
        expect(chef_run).to_not run_bash('install_uru')
      end

    end

  end

end
