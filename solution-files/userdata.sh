#! /bin/bash
dnf update -y
dnf install -y pip
pip3 install flask==2.3.3
pip3 install flask_mysql
dnf install -y git
TOKEN=${user-data-git-token}
USER=${user-data-git-name}
cd /home/ec2-user && git clone https://$TOKEN@github.com/$USER/phonebook.git
export MYSQL_DATABASE_HOST=${db_endpoint}
python3 /home/ec2-user/phonebook/phonebook-app.py