#!/bin/bash

/usr/bin/apt update -y
/usr/bin/apt upgrade -y
/usr/bin/apt install -y git
/usr/bin/apt install -y redis
/usr/bin/apt install -y awscli

ssh -i ~/.ssh/ds2022 ubuntu@35.168.19.63
