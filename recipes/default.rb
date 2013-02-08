#
# Cookbook Name:: zg-base
# Recipe:: default
#
# Copyright (C) 2012 Adam Duro
#
# All rights reserved - Do Not Redistribute
#
include_recipe "python"
include_recipe "php"
include_recipe "apt"
include_recipe "python"
include_recipe "mysql::ruby"
include_recipe "mysql::client"
include_recipe "mysql::server"
include_recipe "php"
include_recipe "supervisor"
include_recipe "firewall"
include_recipe "database"

# Install htop
package "htop" do
  action :install
end

package "finger" do
  action :install
end
