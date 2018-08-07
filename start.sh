#!/bin/bash

DATE=`date '+%Y-%m-%d %H:%M:%S'`
echo "Passenger started at ${DATE}" | systemd-cat -p info


cd /home/ncic/nciclogapp
bundle exec passenger start

