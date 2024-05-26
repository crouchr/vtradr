## TRADR Installation instructions for MacOSX ##

This document describes how install TRADR from scratch.  
This document has been tested on an Intel MacBook running Ventura 13.6.6  
A similar document exists fro running on Linux (to be written).  

# Install the following pre-requisites
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
```bash

$ cd ~          # e.g. /Users/crouchr
$ vagrant plugin install vagrant-hostmanager
$ git clone --depth 1 https://github.com/crouchr/vtradr.git
$ cd vtradr
$ cd env_production
$ vagrant up
```

Now SSH onto the Iceberg VM
```bash
$ vagrant ssh prd_iceberg
```

Now run the TRADR CLI, and access Admin mode
```bash
$ cli
$ cd /admin_cli
````
Now run the script to create and populate the SQL databases from the TRADR CLI
```bash
$ ./install_tradr 
```

Now populate the watchlists SQL tables
```bash
cd ...
python watch.py
exit
```

```bash

```




# Upgrade on Linux
$ cd ~
$ git clone --depth 1 https://github.com/crouchr/vtradr.git
$ cd vtradr
$ ./upgrader.sh