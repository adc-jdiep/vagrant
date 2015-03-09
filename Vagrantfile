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
   puppet_config.vm.synced_folder "./puppet", "/etc/puppet"

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

  config.vm.define "gitlab" do |gitlab_config|
    gitlab_config.vm.box = "puppetlabs/centos-6.5-64-puppet"
    gitlab_config.vm.network "private_network", ip: "192.168.55.12"
    gitlab_config.vm.provision :shell do |shell|
      shell.path = "bootstrap.sh"
      shell.args = "gitlab"
    end
    gitlab_config.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--memory", "512", "--name", "gitlab"]
    end
  end

  config.vm.define "nodejs" do |nodejs_config|
    nodejs_config.vm.box = "puppetlabs/centos-6.5-64-puppet"
    nodejs_config.vm.network "private_network", ip: "192.168.55.13"
    nodejs_config.vm.provision :shell do |shell|
      shell.path = "bootstrap.sh"
      shell.args = "nodejs"
    end
    nodejs_config.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--memory", "512", "--name", "nodejs"]
    end
  end

  config.vm.define "node1" do |node1_config|
    node1_config.vm.box = "puppetlabs/centos-6.5-64-puppet"
    node1_config.vm.network "private_network", ip: "192.168.55.14"
    node1_config.vm.provision :shell do |shell|
      shell.path = "bootstrap.sh"
      shell.args = "node1"
    end
    node1_config.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--memory", "512", "--name", "node1"]
    end
  end

  config.vm.define "docker" do |docker_config|
    docker_config.vm.box = "puppetlabs/centos-6.5-64-puppet"
    docker_config.vm.network "private_network", ip: "192.168.55.15"
    docker_config.vm.provision :shell do |shell|
      shell.path = "bootstrap.sh"
      shell.args = "docker"
    end
    docker_config.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--memory", "512", "--name", "docker"]
    end
  end

end


