# ansible step

## all host 

1. all install megacli
2. add zabbix_agentd.conf.d - raid.phy.discovery
3. copy raid.py
4. restart zabbix_agentd

## controller host

1. copy zabbix_agentd.conf - openstack-discovery
2. copy openstack-discovery
3. restart zabbix_agentd
4. command : pip install requirements.txt

   - [Install the OpenStack command-line clients](https://docs.openstack.org/newton/user-guide/common/cli-install-openstack-command-line-clients.html)

## ceph host

1. copy zabbix_agentd.conf - ceph-status.sh
2. copy ceph-status.sh
3. restart zabbix_agentd
