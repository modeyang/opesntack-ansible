# ansible step

## all host 

1. all install megacli
2. copy zabbix_agentd.conf - raid.phy.discovery
3. copy raid.py
4. restart zabbix_agentd

## controller host

1. copy zabbix_agentd.conf - openstack-discovery
2. copy openstack-discovery
3. restart zabbix_agentd

## ceph host

1. copy zabbix_agentd.conf - ceph-status.sh
2. copy ceph-status.sh
3. restart zabbix_agentd