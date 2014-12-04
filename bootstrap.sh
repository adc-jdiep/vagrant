#!/bin/bash

hostname $1.asdfkjh.com

rm /etc/localtime -f
ln -s /usr/share/zoneinfo/America/Los_Angeles /etc/localtime

echo '192.168.55.10 puppet.asdfkjh.com master puppet.asdflkjh.com puppet
192.168.55.11 jd.asdflkjh.com jd' >> /etc/hosts

if [ -f /etc/redhat-release ]; then
  sed -i "s/localhost.localdomain/$1.example.com/" /etc/sysconfig/network
  rpm -Uvh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
  sleep 5
  yum install -y puppet
  chkconfig puppet on
fi

if [ -f /etc/debian_version ]; then
  hostname > /etc/hostname
fi

if [ $1 == "puppet" ]; then
  service iptables stop
  chkconfig iptables off
  rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-el-6.noarch.rpm
  rpm -ivh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
  yum -y install http://yum.theforeman.org/releases/1.7/el6/x86_64/foreman-release.rpm
  yum -y install foreman-installer
  foreman-installer >> ~/foreman-installer.log
else
  puppet agent --enable
  sleep 5
  puppet agent --test
  sleep 5
  service puppet restart
fi

