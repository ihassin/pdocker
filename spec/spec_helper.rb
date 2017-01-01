require 'serverspec'

set :backend, :ssh
host = ENV['TARGET_HOST']

options = Net::SSH::Config.for(host)

options[:user] ||= "vagrant"
options[:password] ||= "vagrant"

set :host,        "33.33.33.44"
set :ssh_options, options
