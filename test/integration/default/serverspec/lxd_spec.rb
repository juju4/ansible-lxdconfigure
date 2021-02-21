require 'serverspec'

# Required by serverspec
set :backend, :exec

describe package('lxd') do
  it { should be_installed }
end

describe file('/usr/bin/lxd') do
  it { should be_file }
  it { should be_executable }
end

## FIXME! running test fails on travis/xenial: https://travis-ci.org/juju4/ansible-lxd/jobs/152119834
describe service('lxd'), :if => os[:family] == 'ubuntu' && os[:release] == '14.04' do
  it { should be_enabled   }
  it { should be_running   }
end

describe file('/var/lib/lxd/unix.socket'), :if => os[:family] != 'ubuntu' || os[:release] != '20.04' do
  it { should be_socket }
end

