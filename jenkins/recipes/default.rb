#
# Cookbook:: jenkins
# Recipe:: default
#
# Copyright:: 2020, Malik Perang All Rights Reserved.

#Install Java
apt_update "all" do
    action :update
end

apt_package "#{node['java_version']}" do
    action :install
end

#Configure Jenkins Repo
bash 'repo_set' do
    code <<-EOH
    wget -q -O - "#{node['public_key']}" | sudo apt-key add -
    sudo sh -c 'echo deb #{node['package']} > #{node['source_list_path']}'
    EOH
    action :run
end

#Install Jenkins
apt_update "all" do
    action :update
end

apt_package "jenkins" do
    action :install
end

service 'jenkins' do
    supports status: true, restart: true, reload: true
    action [ :enable, :start ]
end

#Allow Firewall for Jenkins port
bash 'update_firewall' do
    code <--EOH 
        sudo ufw allow 8080
        sudo ufw status
    EOH
