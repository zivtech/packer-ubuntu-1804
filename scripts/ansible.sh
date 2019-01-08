#!/bin/bash -eux

# Install Ansible repository.
apt -y update && apt-get -y upgrade
apt -y install software-properties-common
apt-add-repository ppa:ansible/ansible

# Install Ansible.
apt -y update
apt -y install ansible

# Install puppet
apt -y install wget ifupdown net-tools
wget https://apt.puppetlabs.com/puppet5-release-bionic.deb
dpkg -i puppet5-release-bionic.deb
apt -y update
apt -y install puppet-agent