  echo Booting up Zoo Keeper
  echo opening terminals
  sleep 2
   osascript 2>/dev/null <<EOF
    tell application "System Events"
      tell process "Terminal" to keystroke "t" using command down
    end
    tell application "Terminal"
      activate
      do script with command "./../kafka-2.3.0/bin/zookeeper-server-start.sh ../resources/vapeZooKeeperConfig/zookeeper.properties" in window 1
    end tell
EOF