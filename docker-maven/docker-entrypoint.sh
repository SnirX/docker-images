#!/bin/bash
interval=2
limit=$((interval*5))
docker_socket="/var/run/docker.sock"
dockerd >> /var/log/docker.log 2>&1 &
if [ -S $docker_socket ]; then
    count=0
    while true; do
        response=$(curl -s --unix-socket $docker_socket -w %{http_code} -o /dev/null http://localhost/_ping)
        if [ $response -eq 200 ] ; then
            break;
        elif [ $count -eq $limit ]; then
            echo "Docker daemon didn't run properly";
            exit 1;
        fi
        count=$((count+interval))
        sleep $interval
    done
fi
/bin/sh