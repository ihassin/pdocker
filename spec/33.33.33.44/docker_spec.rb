require 'spec_helper'

describe host('33.33.33.44') do
  it { should be_reachable.with( :port => 22, :proto => 'tcp', :timeout => 1 ) }
end

describe service('docker') do
  it { should be_enabled }
  it { should be_running }
end
