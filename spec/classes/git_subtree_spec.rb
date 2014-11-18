require 'spec_helper'

describe 'git_subtree' do
  let(:title) { 'redhat' }
  let(:facts) { {:osfamily=> 'RedHat', :lsbmajordistrelease => 6} }

  context 'with no params' do
    it do
      should contain_class('git_subtree') 
      should contain_file('/usr/libexec/git-core/git-subtree').with({
        'ensure'  => 'present',
        'replace' => 'false',
        'mode'    => '0755',
      }) 
    end
  end
end

describe 'git_subtree' do
  let(:title) { 'debian' }
  let(:facts) { {:osfamily=> 'Debian'} }

  context 'with no params' do
    it do
      expect {
        should contain_class('git_subtree') 
      }.to raise_error(Puppet::Error, /^Module git_subtree is not supported on/)
    end
  end
end
