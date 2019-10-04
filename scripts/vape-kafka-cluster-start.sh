#!/bin/bash
# access arguments
args=("$@")
len=${#args[@]}

function printInfo() {
  echo Booting up "$numOfBroker" of brokers...
  sleep 1
  echo Opening new terminals...
  sleep 1
  echo ...
  EOF
}

# check for null and set number of Brokers
if [ "$len" == 0 ]; then
  echo Number of broker is set to 3
  echo To run more broker, pass the desired number as argument
  numOfBroker=3
else
  numOfBroker=$1
fi

printInfo

brokerId=1
while [ $brokerId -le "$numOfBroker" ]
do
   osascript 2>/dev/null <<EOF
    tell application "System Events"
      tell process "Terminal" to keystroke "t" using command down
    end
    tell application "Terminal"
      activate
      do script with command "./../kafka-2.3.0/bin/kafka-server-start.sh ../resources/vapeBrokerClusterConfig/broker$brokerId.properties" in window 1
    end tell
EOF
  echo $brokerId
((brokerId++))
done