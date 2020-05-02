
# Cookbook Name:: malik-chef-cookbook
# Attribute:: nginx
#
# Copyright (c) 2019 All Rights Reserved.
# 
# You can change the setting attributes here

default['server_name'] = "ci.k8smalaya.com";
default['nginx']['worker_processes'] = 'auto';
default['nginx']['worker_connections'] = 748;
default['nginx']['default_site_enabled'] = false;