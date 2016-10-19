#!/usr/bin/env bash

echo "**** Setting up Rails 5 Ubuntu environment..."
echo "**** Starting with the update..."
apt-get update >/dev/null 2>&1

echo "**** Installing some basic pre-reqs..."
apt-get install -y software-properties-common curl

wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -
sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ trusty-pgdg main" >> /etc/apt/sources.list.d/postgresql.list'

curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -

echo "**** Adding Node..."
apt-get install -y nodejs

echo "**** Adding Ruby Dependencies..."
apt-get install -y git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev

echo "**** Adding Ruby..."
cd
wget http://ftp.ruby-lang.org/pub/ruby/2.3/ruby-2.3.1.tar.gz
tar -xzvf ruby-2.3.1.tar.gz
cd ruby-2.3.1/
./configure
make
make install
ruby -v

echo "**** Adding Bundler..."
gem install bundler --no-ri --no-rdoc

echo "**** Adding Rails..."
gem install rails -v 5.0.0 --no-ri --no-rdoc

echo "**** Adding PostgreSQL..."
apt-get install postgresql-common
apt-get install postgresql-9.5 libpq-dev
sudo -u postgres createuser --superuser vagrant

echo "**** Installing htop ..."
apt-get install -y htop

echo "**** Remove udev Rules"
rm /etc/udev/rules.d/70-persistent-net.rules
mkdir /etc/udev/rules.d/70-persistent-net.rules
rm -rf /dev/.udev/
rm /lib/udev/rules.d/75-persistent-net-generator.rules

dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY

echo "**** AND I THINK I AM DONE! :)"