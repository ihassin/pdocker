# pdocker
Puppet and Docker demo

# Setup

- Install [VirtualBox](https://www.virtualbox.org)
- Install [Vagrant](https://www.vagrantup.com)
- Install [bundler](http://bundler.io)
- Run ```bundle```

# Canary test

- Run ```rspec spec/canary_spec.rb ```

It should run the canary test successfully.

# Run ServerSpec (failing test unless all is good)

Run ```rspec spec/33.33.33.44/docker_spec.rb```

# Run Vagrant to provision and configure a VM with docker installed on it

Run ```vagrant up```

or

run ```vagrant provision``` if it's already up

or

run ```vagrant reload``` if it was up when you made changes to the vagrant file or puppet files.

## Check that all is good after provisioning

Run ```rspec spec/33.33.33.44/docker_spec.rb```

It should pass green!

# Caveats

I have yet to figure out how to install a puppet module in an idempotent way, to avoid this hack in the Vagrantfile:

```
      puppet module install garethr-docker; true
```
