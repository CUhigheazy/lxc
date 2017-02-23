#!/bin/bash
lxc init ubuntu:16.04 tamas
lxc start tamas
sleep 15
lxc list
lxc exec tamas -- apt update --yes
lxc exec tamas -- apt upgrade --yes
lxc exec tamas -- apt install mc --yes
