#!/bin/bash

result=$(cp -r /Users/long/Vagrant/centos7/data/mysql/data/*  ~/data/mysql/)
if [ $? -eq 0 ]; then
	echo "the data of the  mysql has been backup successful"
else
	echo "the data of the mysql has been backup fail"
fi
