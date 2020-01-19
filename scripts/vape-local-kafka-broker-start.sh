#!/bin/bash
echo booting up broker
osascript 2>/dev/null <<EOF
    tell application "System Events"
      tell process "Terminal" to keystroke "t" using command down
    end
    tell application "Terminal"
      activate
      do script with command "kafka-2.3.0/bin/kafka-server-start.sh kafka-2.3.0/config/server.properties" in window 1
    end tell
EOF
