# How to build and run

## Requirements

Building the images for VirtualBox requires

* VirtualBox
* Vagrant
* Packer

## MapR 6.1.0 with MEP 6.1 (Spark)

```
packer build -var-file vars/mapr-6.1.0_MEP-6.1.0-slim.json vagrant-mapr-centos-local.json
vagrant box add --force 'chufe/mapr-6.1.0_MEP-6.1.0-slim' mapr-6.1.0_MEP-6.1.0-slim.box
cd vagrantfiles/mapr-6.1.0_MEP-6.1.0-slim
vagrant up
```

## MapR 6.1.0 with MEP 6.1 (Spark, Hive)

```
packer build -var-file vars/mapr-6.1.0_MEP-6.1.0-hive.json vagrant-mapr-centos-local.json
vagrant box add --force 'chufe/mapr-6.1.0_MEP-6.1.0-hive' mapr-6.1.0_MEP-6.1.0-hive.box
cd vagrantfiles/mapr-6.1.0_MEP-6.1.0-hive
vagrant up
```

## MapR 6.1.0 with MEP 6.1 (Spark, Hive, Drill)

```
packer build -var-file vars/mapr-6.1.0_MEP-6.1.0-hive-drill.json vagrant-mapr-centos-local.json
vagrant box add --force 'chufe/mapr-6.1.0_MEP-6.1.0-hive-drill' mapr-6.1.0_MEP-6.1.0-hive-drill.box
cd vagrantfiles/mapr-6.1.0_MEP-6.1.0-hive-drill
vagrant up
```

## MapR 6.1.0 with MEP 6.0 (Spark)

```
packer build -var-file vars/mapr-6.1.0_MEP-6.0.0-slim.json vagrant-mapr-centos-local.json
vagrant box add --force 'chufe/mapr-6.1.0_MEP-6.0.0-slim' mapr-6.1.0_MEP-6.0.0-slim.box
cd vagrantfiles/mapr-6.1.0_MEP-6.0.0-slim
vagrant up
```

## MapR 6.1.0 with MEP 6.0 (Spark, Hive)

```
packer build -var-file vars/mapr-6.1.0_MEP-6.0.0-hive.json vagrant-mapr-centos-local.json
vagrant box add --force 'chufe/mapr-6.1.0_MEP-6.0.0-hive' mapr-6.1.0_MEP-6.0.0-hive.box
cd vagrantfiles/mapr-6.1.0_MEP-6.0.0-hive
vagrant up
```

## MapR 6.1.0 with MEP 6.0 (Spark, Hive, Drill)

```
packer build -var-file vars/mapr-6.1.0_MEP-6.0.0-hive-drill.json vagrant-mapr-centos-local.json
vagrant box add --force 'chufe/mapr-6.1.0_MEP-6.0.0-hive-drill' mapr-6.1.0_MEP-6.0.0-hive-drill.box
cd vagrantfiles/mapr-6.1.0_MEP-6.0.0-hive-drill
vagrant up
```

## MapR 6.0.1 with MEP 5.0 (Spark)

```
packer build -var-file vars/mapr-6.0.1_MEP-5.0.0-slim.json vagrant-mapr-centos-local.json
vagrant box add --force 'chufe/mapr-6.0.1_MEP-5.0.0-slim' mapr-6.0.1_MEP-5.0.0-slim.box
cd vagrantfiles/mapr-6.0.1_MEP-5.0.0-slim
vagrant up
```

Download link: https://app.vagrantup.com/chufe/boxes/mapr-6.0.1_MEP-5.0.0-slim/versions/1/providers/virtualbox.box

## MapR 6.0.1 with MEP 5.0 (Spark, Hive)

```
packer build -var-file vars/mapr-6.0.1_MEP-5.0.0-hive.json vagrant-mapr-centos-local.json
vagrant box add --force 'chufe/mapr-6.0.1_MEP-5.0.0-hive' mapr-6.0.1_MEP-5.0.0-hive.box
cd vagrantfiles/mapr-6.0.1_MEP-5.0.0-hive
vagrant up
```

## MapR 6.0.1 with MEP 5.0 (Spark, Hive, Drill)

```
packer build -var-file vars/mapr-6.0.1_MEP-5.0.0-hive-drill.json vagrant-mapr-centos-local.json
vagrant box add --force 'chufe/mapr-6.0.1_MEP-5.0.0-hive-drill' mapr-6.0.1_MEP-5.0.0-hive-drill.box
cd vagrantfiles/mapr-6.0.1_MEP-5.0.0-hive-drill
vagrant up
```
