#!/bin/sh

# Wrapper script for the steps to enable wifi client

systemctl stop Fundani
if /opt/Fundani/rpi/run_client.sh ; then
    echo "Started Wifi client sucessfully!"
    exit 0
else
    echo "Error while starting wifi client, restarting Fundani"
    systemctl start Fundani
    exit 1
fi
exit 1
