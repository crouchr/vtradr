## Vtradr Installation instructions ##

# MacOS - Ventura 13.6.6 : Install the following pre-requisites
- VirtualBox v7 - go to virtualbox.org
- Vagrant (Community) version v2.4.1 - binary download AMD64
- Install Xcode to get git installed
- Install Homebrew
- reboot
- install joe editor using :
  - brew install joe  
- Set env variables by editing ~/.zshrc
- export x=y

# Install VBOXES - initial solution prior to boxes being published on Vagrant Cloud
$ vagrant box add --force --name tradr7 tradr7.box
$ vagrant box add --force --name tradr7-services tradr7-services.box


# First time installation of TRADR
$ cd ~          # e.g. /Users/crouchr
$ vagrant plugin install vagrant-hostmanager
$ git clone --depth 1 https://github.com/crouchr/vtradr.git
$ cd vtradr
$ cd env_production
$ vagrant up




# Upgrade on Linux
$ cd ~
$ git clone --depth 1 https://github.com/crouchr/vtradr.git
$ cd vtradr
$ ./upgrader.sh