#!/bin/bash

sudo yum update -y
sudo amazon-linux-extras install -y epel 
sudo yum install -y python3
sudo yum install -y gcc-c++ openssl-devel git readline-devel
sudo yum install -y openssl-devel readline-devel zlib-devel curl-devel libyaml-devel libffi-devel
sudo yum install -y node.js npm
sudo yum install -y postgresql postgresql-devel postgresql-server postgresql-contrib postgresql-docs

sudo chmod 755 /home/ec2-user

sudo systemctl enable postgresql.service
sudo postgresql-setup initdb
sudo systemctl start postgresql.service

sudo -u postgres createuser -s ec2-user
sudo -u postgres createdb ec2-user
sudo -u postgres psql -c "ALTER USER \"ec2-user\" WITH SUPERUSER;"  

sudo sed -i -e "s/host    all             all             127.0.0.1\/32            ident/host    all             all             127.0.0.1\/32            trust/g" /var/lib/pgsql/data/pg_hba.conf

sudo systemctl restart postgresql.service
