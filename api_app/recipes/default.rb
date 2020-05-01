#
# Cookbook:: api-app
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

include_recipe "nodejs"
include_recipe "jenkins"

apt_update "all" do
    action :update
end

# bash 'install_pm2' do
#     code <<-EOH
#     curl -sL "#{node['nodejs']['ppa']}" -o "#{node['nodejs']['ppa_bash_file']}"
#     sudo bash "#{node['nodejs']['ppa_bash_file']}"
#     yes | sudo apt install nodejs
#     yes | sudo apt install build-essential
#     EOH
#     action :run
# end

# #Promote new production app
# bash 'deploy_blue_env' do
#     code <<-EOH
#     curl -sL "#{node['nodejs']['ppa']}" -o "#{node['nodejs']['ppa_bash_file']}"
#     sudo bash "#{node['nodejs']['ppa_bash_file']}"
#     yes | sudo apt install nodejs
#     yes | sudo apt install build-essential
#     EOH
#     action :run
# end

# #Demote old app
# bash 'deploy_blue_env' do
#     code <<-EOH
#     curl -sL "#{node['nodejs']['ppa']}" -o "#{node['nodejs']['ppa_bash_file']}"
#     sudo bash "#{node['nodejs']['ppa_bash_file']}"
#     yes | sudo apt install nodejs
#     yes | sudo apt install build-essential
#     EOH
#     action :run
# end