# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    config.vm.box = "hashicorp/bionic64"

    # Update
    config.vm.provision :shell, inline: "apt-get update"

    # Install Docker
    config.vm.provision :docker

    config.vm.provision :shell, path: "deployment/setup.sh"
  end
