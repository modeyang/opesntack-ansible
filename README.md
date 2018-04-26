# opesntack-ansilbe

1. ceph zabbix

### Zabbix plugin for Ceph monitoring

[Zabbix plugin for Ceph monitoring](https://github.com/thelan/ceph-zabbix)

### ansible setup ceph

[ansible-examples](https://github.com/ansible/ansible-examples)


### ceph osd pg num check


# OpenStack Zabbix ansible

1. openstack 节点情况

```
[controller]
controller-01
controller-02

[nove]
computer-01
computer-02
computer-03
computer-04
node-12
node-13
node-14

[ceph]
ceph-01
ceph-02
ceph-03
```

2. zabbix discory Discovery rules  

   - 基础磁盘状态监控
   
```
UserParameter=raid.phy.discovery,/etc/zabbix/scripts/raid_disk_status/raid.py pd_discovery
UserParameter=raid.phy.mec[*],/etc/zabbix/scripts/raid_disk_status/raid.py mec $1
UserParameter=raid.phy.oec[*],/etc/zabbix/scripts/raid_disk_status/raid.py oec $1
UserParameter=raid.phy.pfc[*],/etc/zabbix/scripts/raid_disk_status/raid.py pfc $1
UserParameter=raid.phy.status[*],/etc/zabbix/scripts/raid_disk_status/raid.py status $1
UserParameter=raid.phy.amount,/etc/zabbix/scripts/raid_disk_status/raid.py amount
```

   - openstack节点监控

```
UserParameter=openstack-discovery[*], /opt/openstack-discovery $1 $2 $3 $4 $5
UserParameter=openstack-discovery.host[*], /opt/openstack-discovery $1 $2 $3 $4 $5 $6

```

   - ceph status check zabbix_agentd.conf

```
UserParameter=ceph.health, /opt/ceph-status.sh health
UserParameter=ceph.count, /opt/ceph-status.sh count
UserParameter=ceph.osd_in, /opt/ceph-status.sh in
UserParameter=ceph.osd_up, /opt/ceph-status.sh up
UserParameter=ceph.active, /opt/ceph-status.sh active
UserParameter=ceph.backfill, /opt/ceph-status.sh backfill
UserParameter=ceph.clean, /opt/ceph-status.sh clean
UserParameter=ceph.creating, /opt/ceph-status.sh creating
UserParameter=ceph.degraded, /opt/ceph-status.sh degraded
UserParameter=ceph.degraded_percent, /opt/ceph-status.sh degraded_percent
UserParameter=ceph.down, /opt/ceph-status.sh down
UserParameter=ceph.incomplete, /opt/ceph-status.sh incomplete
UserParameter=ceph.inconsistent, /opt/ceph-status.sh inconsistent
UserParameter=ceph.peering, /opt/ceph-status.sh peering
UserParameter=ceph.recovering, /opt/ceph-status.sh recovering
UserParameter=ceph.remapped, /opt/ceph-status.sh remapped
UserParameter=ceph.repair, /opt/ceph-status.sh repair
UserParameter=ceph.replay, /opt/ceph-status.sh replay
UserParameter=ceph.scrubbing, /opt/ceph-status.sh scrubbing
UserParameter=ceph.splitting, /opt/ceph-status.sh splitting
UserParameter=ceph.stale, /opt/ceph-status.sh stale
UserParameter=ceph.pgtotal, /opt/ceph-status.sh pgtotal
UserParameter=ceph.waitBackfill, /opt/ceph-status.sh waitBackfill
UserParameter=ceph.mon, /opt/ceph-status.sh mon
UserParameter=ceph.rados_total, /opt/ceph-status.sh rados_total
UserParameter=ceph.rados_used, /opt/ceph-status.sh rados_used
UserParameter=ceph.rados_free, /opt/ceph-status.sh rados_free
UserParameter=ceph.wrbps, /opt/ceph-status.sh wrbps
UserParameter=ceph.rdbps, /opt/ceph-status.sh rdbps
UserParameter=ceph.ops, /opt/ceph-status.sh ops
```

    
   - ceph status check zabbix_agentd.conf



   
 