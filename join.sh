#!/bin/bash

# file: join.sh
#

# description: this file allows a node to join a group
#

echo "Initiating Join Protocol ..."

# run the listening daemon
#
python3 code/ListeningDaemon.py &

# run the TGDH driver program
#
sleep 1.5
python3 code/driver.py -j $1 -a $2

#
# end file: join.sh
