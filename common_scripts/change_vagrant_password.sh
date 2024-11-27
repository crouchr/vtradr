#!/bin/bash
# If connected to Internet do not want the default password set
echo 'Changing default vagrant password...'

echo "vagrant:FunkyPrepper1968!" | sudo chpasswd

echo 'Changed default vagrant password.'