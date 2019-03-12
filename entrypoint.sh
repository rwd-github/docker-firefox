#!/bin/bash


modHosts() {
#	sleep 10
	cat /additionalhosts.txt | sudo tee -a /etc/hosts

	echo "***************************************"
	echo "**  the hosts file                   **"
	cat /etc/hosts
}

modHosts

/usr/bin/firefox file:///etc/hosts &
/usr/bin/xterm

