# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

# system "vagrant plugin update"
# required_plugins = %w(vagrant-digitalocean)
# required_plugins.each do |plugin|
#   system "NOKOGIRI_USE_SYSTEM_LIBRARIES=1 vagrant plugin install #{plugin}" unless Vagrant.has_plugin? plugin
# end

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.ssh.insert_key = false
  config.ssh.forward_agent = true

  config.vm.box = "ubuntu/trusty64"

  config.vm.define "dockerhost" do |dockerhost|
    dockerhost.vm.hostname = "dockerhost"
    dockerhost.vm.network "private_network", ip: "33.33.33.44"
    dockerhost.vm.provider "virtualbox" do |provider|
      provider.name = "dockerhost"
      provider.memory = "512"
    end

    config.vm.provision "shell", inline: <<-SHELL
      puppet module install garethr-docker; true
    SHELL

    config.vm.provision "puppet" do |puppet|
      puppet.manifests_path = "manifests"
      puppet.manifest_file = "dockerhost.pp"
    end
  end

end
