#!/bin/sh

for i in `cat /tmp/bacula_client_lists`
do
	ssh-copy-id -i /root/.ssh/id_rsa.pub root@$i
done
