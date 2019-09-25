# -*- mode: ruby -*-
# vi: set ft=ruby :

ENV['VAGRANT_NO_PARALLEL'] = 'yes'

Vagrant.configure(2) do |config|
 config.vm.provision "shell", path: "scripts/bootstrap.sh"

  # graph Server
  config.vm.define "graph" do |graph|
    graph.vm.box = "centos/7"
    graph.vm.hostname = "nagios-server"
    graph.vm.network "private_network", ip: "172.30.0.100", mask: "255.255.255.0"
    graph.vm.network "public_network", bridge: "Intel(R) Dual Band Wireless-AC 8265", auto_config: true
    graph.vm.provider "virtualbox" do |v|
      v.name = "graph"
      v.memory = 2048
      v.cpus = 2
    end
    graph.vm.provision "shell", path: "scripts/graph_install.sh"
  end
  
end
