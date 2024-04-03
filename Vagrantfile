# -*- mode: ruby -*-
# vi: set ft=ruby :

# smarter way to do multi-machine is here : https://manski.net/articles/vagrant/multi-machine-tutorial

Vagrant.configure("2") do |config|

  # All my TRADR application code is on here - node subject to lots of change
  # This is the node the user interacts with - the 'iceberg' terminal
  # Docker, Jython etc.
  config.vm.define "iceberg" do |iceberg|
    iceberg.vm.box = "tradr7"
    # tradr0.vm.box_check_update = true
    iceberg.vm.hostname = "iceberg"
    iceberg.vm.network :public_network, ip: "192.168.1.200", bridge: "eth0"
    #tradr0.vm.network "forwarded_port", guest: 3000, host: 7000, host_ip: "127.0.0.1"  # Grafana
    #tradr0.vm.network "forwarded_port", guest: 80, host: 7080, host_ip: "127.0.0.1"    # Web Front-end
    iceberg.vm.provider "virtualbox" do |vb0|
        vb0.gui = false
        vb0.memory = "2048"
    end
    # tradr0.vm.provision "shell", path: "setup-tradr0.sh"
    end

  # Grafana node - dashboards subject to changes
  config.vm.define "tradr_grafana" do |tradr_grafana|
    tradr_grafana.vm.box = "tradr7"
    # tradr1.vm.box_check_update = true
    tradr_grafana.vm.hostname = "tradr-grafana"
    tradr_grafana.vm.network :public_network, ip: "192.168.1.201", bridge: "eth0"
    #tradr1.vm.network "forwarded_port", guest: 3000, host: 8000, host_ip: "127.0.0.1"  # Grafana
    #tradr1.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"    # Web Front-end
    tradr_grafana.vm.provider "virtualbox" do |vb1|
        vb1.gui = false
        vb1.memory = "2048"
    end
    # tradr1.vm.provision "shell", path: "setup-tradr1.sh"
    end

  # TRADR - services - MariaDB, ELK, Protonmail bridge etc.
  config.vm.define "tradr_services" do |tradr_services|
    tradr_services.vm.box = "tradr7"
    # tradr2.vm.box_check_update = true
    tradr_services.vm.hostname = "tradr-services"
    tradr_services.vm.network :public_network, ip: "192.168.1.202", bridge: "eth0"
    #tradr2.vm.network "forwarded_port", guest: 3000, host: 8000, host_ip: "127.0.0.1"  # Grafana
    #tradr2.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"    # Web Front-end
    tradr_services.vm.provider "virtualbox" do |vb1|
        vb1.gui = false
        vb1.memory = "2048"
    end
    # tradr2.vm.provision "shell", path: "setup-tradr2.sh"
    end

end
