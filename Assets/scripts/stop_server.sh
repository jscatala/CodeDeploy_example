#!/bin/bash
isNginx='pgrep nginx'
if [[ -n $isNginx ]]; then
	systemctl stop nginx
fi

isExample='pgrep example'
if [[ -n $isExample ]]; then
	systemctl stop example
fi

date > /home/ubuntu/stop.txt
