require 'spec_helper'

describe 'pam' do
  context 'on Ubuntu 18.04' do
    let(:facts) do
      {
        os: {
          'name'    => 'Ubuntu',
          'family'  => 'Debian',
          'distro'  => { 'codename' => 'bionic' },
          'release' => { 'full' => '18.04', 'major' => '18.04' },
        },
        kernelrelease: '4.15.0-200-generic',
      }
    end

    it { is_expected.to compile.with_all_deps }
  end
end
