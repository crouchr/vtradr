## TRADR Installation instructions for MacOSX ##

This document describes how install TRADR from scratch.  
This document has been tested on an Intel MacBook running Ventura 13.6.6  
A similar document exists for running on Linux (to be written).  

# Install the following pre-requisites
- VirtualBox v7 - go to virtualbox.org
- Vagrant (Community) version v2.4.1 - binary download AMD64
- Install Xcode to get git installed
- Install Homebrew

```shell
$ cd ~          # e.g. /Users/crouchr
$ vagrant plugin install vagrant-hostmanager
$ reboot
```

Install 'joe' editor (optional)
```shell
$ brew install joe  
```

Set env variables by editing ~/.zshrc
```shell
export x=y
```

Test environment variables have been set using  
```shell
$ env
```

If on Ermin LAN, ensure that www.tradr.click resolves to 192.168.1.4  

```shell
$ ping www.tradr.click
```

# First time installation of TRADR 
Install the first of the two TRADR VMs, the 'Iceberg' VM
```bash
$ git clone --depth 1 https://github.com/crouchr/vtradr.git
$ cd vtradr
$ cd env_production
$ ./update_tradr_boxes.sh
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

Now run the 'install_tradr' script to create and populate the SQL databases from the TRADR CLI   
This step is required even if you want to restore a previously-saved database. 
```bash
$ ./install_tradr.sh 
```


Now populate the watchlists SQL tables - this will take about 10 minutes to populate
```bash
python add_watchlist_trades_to_db.py
exit
```

You will now be at the Iceberg prompt (i.e. not within a Docker container) 
Run up the various TRADR 'grabber' applications (Docker containers) :   
```shell
$ run_tradr_daemons
```

In another terminal
```bash
vagrant ssh prd_iceberg
```




# Upgrade on Linux
$ cd ~
$ git clone --depth 1 https://github.com/crouchr/vtradr.git
$ cd vtradr
$ ./upgrader.sh