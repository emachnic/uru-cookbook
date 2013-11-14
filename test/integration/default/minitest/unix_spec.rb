require 'minitest/spec'

describe 'uru::unix' do

  it 'pulls down the source file' do
    assert File.exists?("#{ENV['HOME']}/bin/uru-0.6.3-78eeabd-linux-x86.tar.gz")
  end

  it 'extracts the file to the correct path' do
    assert File.exists?("#{ENV['HOME']}/bin/uru_rt")
  end

  it 'sets the uru_rt file as executable' do
    assert File.executable?("#{ENV['HOME']}/bin/uru_rt")
  end

  #it 'adds the extract path to the PATH' do
  #  assert_includes_content("#{ENV['HOME']}/.bash_profile", 'eval "$(uru_rt admin install)"')
  #end

end
