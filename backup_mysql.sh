#!/bin/bash

docker pause mysql &&
sudo cp -r /home/vagrant/docker/dnmp/data/mysql/* /vagrant_data/mysql/data &&
docker unpause mysql
echo "successful for backup"
