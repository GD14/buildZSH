#!/bin/bash
# 脚本说明：每隔1秒钟打印一次 netstat -an 输出中，
# 如果第二列 (Recv-Q) 或第三列 (Send-Q) 是数字且大于 1000，则打印该行

while true; do
    echo "==== $(date) ===="
    netstat -an | awk 'NR > 2 {
        if (( $2 ~ /^[0-9]+$/ && $2 > 1000 ) || ( $3 ~ /^[0-9]+$/ && $3 > 1000 ))
            print $0
    }'
    sleep 1
done
