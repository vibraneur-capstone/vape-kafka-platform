#!/bin/bash

args=("$@")
len=${#args[@]}

if [ "$len" == 0 ]; then
  echo No args provided exiting...
  sleep 5
  exit 1
fi

if [ "$1" == zookeeper ]; then
  if [ "$len" -le 1 ]; then
    echo no enough args provided exiting ......
    exit 1
  else
    echo running zookeeper using config vapeZooKeeperConfig/zookeeper.properties
    sleep 2
    echo "$2" >> /tmp/zookeeper/myid
    sh ./vape/kafka/bin/zookeeper-server-start.sh ./vape/resources/vapeZooKeeperConfig/zookeeper.properties
  fi
elif [ "$1" == broker ]; then
  if [ "$len" -le 1 ]; then
    echo no enough args provided exiting ......
    exit 1
  else
    echo running broker using config vapeBrokerClusterConfig/broker"$2".properties
    sleep 2
    sh ./vape/kafka/bin/kafka-server-start.sh ./vape/resources/vapeBrokerClusterConfig/broker"$2".properties
  fi
else
  echo no match exiting...
  exit 0
fi