#
# Cookbook:: jenkins
# Recipe:: default
#
# Copyright:: 2020, Malik Perang All Rights Reserved.

include_recipe "nginx::default"

nginx_site "ci.k8smalaya.com" do 
    site_name "ci.k8smalaya.com"
    template "ci.k8smalaya.com.conf.erb"
    variables (
            {
                server_name: 'ci.k8smalaya.com'
            }
    )
    action :enable
end