#
# Cookbook:: nodejs
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

apt_update

apt_package 'curl' do
    action :install
end

bash 'install_nodejs' do
    code <<-EOH
    curl -sL "#{node['nodejs']['ppa']}" -o "#{node['nodejs']['ppa_bash_file']}"
    sudo bash "#{node['nodejs']['ppa_bash_file']}"
    yes | sudo apt install nodejs
    yes | sudo apt install build-essential
    EOH
    action :run
end