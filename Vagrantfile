ENV['VAGRANT_NO_PARALLEL'] = 'yes'

Vagrant.configure(2) do |config|
  if Vagrant.has_plugin?("vagrant-proxyconf")
    config.proxy.http     = "http://172.16.181.117:3128"
    config.proxy.https    = "http://172.16.181.117:3128"
  end
  config.vm.provision "shell", path: "scripts/bootstrap.sh"

  # graph server
  config.vm.define "graph" do |graph|
    graph.vm.box = "centos/7"
    graph.vm.hostname = "graph"
    graph.vm.network "private_network", ip: "172.22.0.200", mask: "255.255.255.0"
    graph.vm.provider "virtualbox" do |v|
      v.name = "graph"
      v.memory = 2048
      v.cpus = 2
    end
    graph.vm.provision "shell", path: "scripts/graph_install.sh"
  end
  
end
