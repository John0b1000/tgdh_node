#!/bin/bash

# file: run.sh
#

# description: this file runs the TGDH communication protocol
#

# run the listening daemon
#
python3 code/ListeningDaemon.py &

# (temporary) set a timer for everyone to join
#
sleep 0.5
echo "Gathering initial group data ..."
sleep 0.1
echo "Allowing everyone to join ..."
sleep 0.5
echo "30 seconds remaining ..."
sleep 10
echo "20 seconds remaining ..."
sleep 10
for i in {10..1}
do
    echo $i "seconds remaining ..."
    sleep 1
done

# run the TGDH driver program
#
sleep 3
python3 code/driver.py -s $1 -i $2

# kill the listening process in the background
#
pkill -f ListeningDaemon.py

#
# end file: run.sh
