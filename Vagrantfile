# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.define "puppet" do |puppet_config|
    puppet_config.vm.box = "puppetlabs/centos-6.5-64-puppet"
    puppet_config.vm.network "private_network", ip: "192.168.55.10"
    puppet_config.vm.provision :shell do |shell|
      shell.path = "bootstrap.sh"
      shell.args = "puppet"
    end
    puppet_config.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--memory", "1024", "--name", "puppet"]
    end
  end

  config.vm.define "jd" do |jd_config|
    jd_config.vm.box = "puppetlabs/centos-6.5-64-puppet"
    jd_config.vm.network "private_network", ip: "192.168.55.11"
    jd_config.vm.provision :shell do |shell|
      shell.path = "bootstrap.sh"
      shell.args = "jd"
    end
    jd_config.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--memory", "512", "--name", "jd"]
    end
  end

end


