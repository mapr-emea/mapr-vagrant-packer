#!/bin/bash

cd ~
git clone https://github.com/mapr-emea/mapr-vagrant-packer.git
git clone https://github.com/mapr-emea/mapr-ansible.git
cd mapr-ansible
git checkout $MAPR_ANSIBLE_GIT_BRANCH
ansible-playbook -i ../mapr-vagrant-packer/$MAPR_ANSIBLE_INVENTORY --extra-vars "$MAPR_ANSIBLE_EXTRA_VARS" site-cluster.yml
cd ~
rm -Rf mapr-ansible
rm -Rf mapr-vagrant-packer

maprcli volume list -json | jq '.data[].volumename' | xargs -L 1 maprcli volume modify -replication 1 -minreplication 1 -name
maprcli volume list -json | jq '.data[].volumename' | xargs -L 1 maprcli volume modify -nsreplication 1 -nsminreplication 1 -name
maprcli alarm clearall

systemctl stop mapr-posix-client-basic | true
systemctl stop mapr-warden
systemctl stop mapr-zookeeper
