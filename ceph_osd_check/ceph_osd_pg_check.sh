ceph pg dump|awk -F ' ' '{print $1, $15}'|awk -F "[ ]|[[]|[,]|[]]" '{print $3, $4}'|tr -s ' ' '\n'|sort|uniq -c|sort -n
