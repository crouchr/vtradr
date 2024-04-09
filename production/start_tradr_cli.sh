#!/bin/bash
# Run from /home/vagrant to bring up tradr cli
docker pull registry:5000/tradr-cli
docker run -v /var/lib/mysql/mysql.sock:/mysql.sock -it registry:5000/tradr-cli
