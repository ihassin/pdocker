require 'rspec'

describe 'Docker host is created' do
  it 'creates a Vagrantfile to host docker-host' do
    output = `vagrant up`
    expect($?.success?).to eq(true)
  end
end
