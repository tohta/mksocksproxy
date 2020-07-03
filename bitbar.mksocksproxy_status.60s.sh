#!/usr/bin/env bash

if [ $(networksetup -getsocksfirewallproxy Wi-Fi | awk -F: '/^Enabled:/ {print $2}') == "Yes" ]; then
  echo '🙆‍♀️Proxying... | color=red'
else
  echo '🏠'
fi
echo '---'
networksetup -getsocksfirewallproxy Wi-Fi
echo '---'
echo "mksocksproxy"
echo "--On | bash=/usr/local/bin/mksocksproxy param1=on terminal=false refresh=true color=green"
echo "--Off | bash=/usr/local/bin/mksocksproxy param1=off terminal=false refresh=true color=red"
echo "↻ - Refresh | terminal=false refresh=true"
