#!/bin/bash

yum update -y
amazon-linux-extras install -y epel 
yum install -y python3
yum install -y gcc-c++ openssl-devel git readline-devel
yum install -y openssl-devel readline-devel zlib-devel curl-devel libyaml-devel libffi-devel
yum install -y node.js npm
yum install -y postgresql postgresql-devel postgresql-server postgresql-contrib postgresql-docs

chmod 755 /home/ec2-user

sudo -u ec2-user curl -L https://raw.githubusercontent.com/c9/install/master/install.sh | bash

systemctl enable postgresql.service
postgresql-setup initdb
systemctl start postgresql.service

sudo -u postgres createuser -s ec2-user
sudo -u postgres createdb ec2-user
sudo -u postgres psql -c "ALTER USER \"ec2-user\" WITH SUPERUSER;"  

sed -i -e "s/host    all             all             127.0.0.1\/32            ident/host    all             all             127.0.0.1\/32            trust/g" /var/lib/pgsql/data/pg_hba.conf

systemctl restart postgresql.service

git clone https://github.com/newrelic/newrelic-ruby-kata /home/ec2-user/newrelic-ruby-kata

chown ec2-user.ec2-user -R /home/ec2-user/newrelic-ruby-kata