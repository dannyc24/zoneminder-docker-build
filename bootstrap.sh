#!/bin/bash

#Going to cheat with the Mysql Socket
service apache2 restart
service mysql start
chmod 777 /var/run/mysqld/
chmod 777 /var/run/mysqld/*
service zoneminder start

echo "Services Started"
read -p "Press enter to terminate container"

