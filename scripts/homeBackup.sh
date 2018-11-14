#!/bin/sh
cd ~
sudo tar -cvpzf backup.tar.gz \
  -X /home/jacob/scripts/blacklist \
  -T /home/jacob/scripts/whitelist
