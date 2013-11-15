require 'minitest/spec'

describe 'uru::unix' do

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
