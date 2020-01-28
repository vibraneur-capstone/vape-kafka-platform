#!/bin/bash
rm -rf local-kafka

sh scripts/vape-local-kafka-zoo-keeper-start.sh
sleep 10
sh scripts/vape-local-kafka-broker-start.sh
sleep 10

# create test topic
osascript 2>/dev/null <<EOF
    tell application "System Events"
      tell process "Terminal" to keystroke "t" using command down
    end
    tell application "Terminal"
      activate
      do script with command "kafka-2.3.0/bin/kafka-topics.sh --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic test" in window 1
      do script with command "kafka-2.3.0/bin/kafka-topics.sh --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic FFT" in window 1
      do script with command "kafka-2.3.0/bin/kafka-topics.sh --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic KURTOSIS" in window 1
      do script with command "kafka-2.3.0/bin/kafka-topics.sh --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic RMS" in window 1
      do script with command "kafka-2.3.0/bin/kafka-topics.sh --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic SENSOR" in window 1
    end tell
EOF

