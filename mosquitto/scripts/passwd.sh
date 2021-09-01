#!/bin/sh
cd /tmp/scripts/
touch foo
/usr/bin/mosquitto_passwd -b foo foo bar
