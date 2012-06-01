#!/bin/sh

sudo yum update -y
cd /var/www/html/
#Update git repo and checkout the appropriate branch
if [ -r /var/www/html/.git/HEAD ]; then
su -s /bin/sh apache -c "git remote rm origin"
su -s /bin/sh apache -c "git remote add origin git@github.com:lensnetllc/direct-lens.git"
su -s /bin/sh apache -c "git pull origin master"
su -s /bin/sh apache -c "git checkout master"
fi