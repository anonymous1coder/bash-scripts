#!/bin/bash

figlet Changing MAC Address 00:00:00:00:00:00

sleep 0.5

echo '------------------------------------'
auth='sudo'
macchanger -s wlp7s0
$auth ip link set dev wlp7s0 down
$auth macchanger -r wlp7s0
$auth ip link set dev wlp7s0 up
figlet MAC Address Changed
macchanger -s wlp7s0


