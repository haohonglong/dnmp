# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
  config.vm.box = "centos/7"
  config.vm.hostname = "centos7"

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # NOTE: This will enable public access to the opened port
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine and only allow access
  # via 127.0.0.1 to disable public access
  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  config.vm.network "private_network", ip: "192.168.3.10"
  # config.vm.network "public_network", ip: "192.168.1.100"
  # config.vm.network "public_network", bridge: "en1: Wi-Fi (AirPort)"


  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.

    
  
  config.vm.synced_folder "./data", "/vagrant_data", create: true
  config.vm.synced_folder "/Users/long/sites", "/www"
  config.vm.synced_folder "~/.m2/repository", "/home/vagrant/.m2/repository"
  config.vm.synced_folder "~/projects", "/home/vagrant/projects"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  config.vm.provider "virtualbox" do |v|
      v.name = "centos7"
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
      v.memory = "2046"
  end


  # config.vm.define "web" do |web|
  #     web.vm.network "private_network", ip: "192.168.33.11"

  #     web.vm.box = "centos/7"
  #     web.vm.hostname = "centos7-1"

  #     web.vm.provider "virtualbox" do |v|
  #         v.name = "centos7_1"
  #         v.memory = "2046"
  #     end

  #     # web.vm.provision "shell", path: "install_docker.sh"


  # end



  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # Enable provisioning with a shell script. Additional provisioners such as
  # Ansible, Chef, Docker, Puppet and Salt are also available. Please see the
  # documentation for more information about their specific syntax and use.
  config.vm.provision "shell", inline: <<-SHELL
      HOST_IP="export HOST_IP=192.168.3.10"
      if ! grep "$HOST_IP" .bashrc >/dev/null; then
        echo $HOST_IP >> .bashrc
      fi
      
      sudo systemctl start docker
      docker start nvm rust golang build_html_service node1 phpredisadmin 
  SHELL
end