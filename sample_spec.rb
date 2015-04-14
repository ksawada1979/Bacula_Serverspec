require 'rubygems'
require 'spec_helper'

describe package('bacula-client') do
  it { should be_installed }
end

describe service('bacula-fd') do
  it { should be_enabled }
  it { should be_running }
end

describe port(9102) do
  it { should be_listening }
end
