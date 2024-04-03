# -*- mode: ruby -*-
# vi: set ft=ruby :

# smarter way to do multi-machine is here : https://manski.net/articles/vagrant/multi-machine-tutorial

Vagrant.configure("2") do |config|

  # All my TRADR application code is on here - node subject to lots of change
  # This is the node the user interacts with - the 'iceberg' terminal
  # Docker, Jython etc.
  config.vm.define "tradr0" do |tradr0|
    tradr0.vm.box = "tradr7"
    # tradr0.vm.box_check_update = true
    tradr0.vm.hostname = "iceberg"
    #tradr0.vm.network "forwarded_port", guest: 3000, host: 7000, host_ip: "127.0.0.1"  # Grafana
    #tradr0.vm.network "forwarded_port", guest: 80, host: 7080, host_ip: "127.0.0.1"    # Web Front-end
    tradr0.vm.provider "virtualbox" do |vb0|
        vb0.gui = false
        vb0.memory = "2048"
    end
    # tradr0.vm.provision "shell", path: "setup-tradr0.sh"
    end

  # Grafana node - dashboards subject to changes
  config.vm.define "tradr1" do |tradr1|
    tradr1.vm.box = "tradr7"
    # tradr1.vm.box_check_update = true
    tradr1.vm.hostname = "tradr-grafana"
    #tradr1.vm.network "forwarded_port", guest: 3000, host: 8000, host_ip: "127.0.0.1"  # Grafana
    #tradr1.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"    # Web Front-end
    tradr1.vm.provider "virtualbox" do |vb1|
        vb1.gui = false
        vb1.memory = "2048"
    end
    # tradr1.vm.provision "shell", path: "setup-tradr1.sh"
    end

  # TRADR - services - MariaDB, ELK, Protonmail bridge etc.
  config.vm.define "tradr2" do |tradr2|
    tradr2.vm.box = "tradr7"
    # tradr2.vm.box_check_update = true
    tradr2.vm.hostname = "tradr-services"
    #tradr2.vm.network "forwarded_port", guest: 3000, host: 8000, host_ip: "127.0.0.1"  # Grafana
    #tradr2.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"    # Web Front-end
    tradr2.vm.provider "virtualbox" do |vb1|
        vb1.gui = false
        vb1.memory = "2048"
    end
    # tradr2.vm.provision "shell", path: "setup-tradr2.sh"
    end

end
