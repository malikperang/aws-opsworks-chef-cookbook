
# Cookbook Name:: aws-ha-simulation-cookbook
# Attribute:: default
#
# Copyright (c) 2019 All Rights Reserved.
# 
# You can change the setting attributes here

default['java_version'] = "openjdk-8-jdk";
default['public_key'] = 'https://pkg.jenkins.io/debian/jenkins-ci.org.key';
default['package'] = 'http://pkg.jenkins.io/debian-stable binary/';
default['source_list_path'] = '/etc/apt/sources.list.d/jenkins.list';