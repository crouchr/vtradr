## TRADR : Swing Trader User Guide ##

The Swing Trader Application monitors a single stock (trade) every minute indicating the profiles/losses in real time. 

SSH onto the Iceberg VM
```bash
$ vagrant ssh prd_iceberg
```

Now tail the log file produced by Swing Trader.
```bash
$ sudo su -
# cd /var/log
# tail -f swing_trader.log
```

Run an SSH session to the Iceberg VM in another terminal  
```bash
$ vagrant ssh prd_iceberg
```

Now run the TRADR CLI, and access User mode
```bash
$ cli
$ cd /user_cli
```

