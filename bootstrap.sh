#!/usr/bin/env bash

# ASSUMES BIONIC 64

# Front-end output breaks vagrant provision
export DEBIAN_FRONTEND=noninteractive

# install basics
apt update
apt install -y -q git python-dev python-pip