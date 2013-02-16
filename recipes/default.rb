#
# Cookbook Name:: zg-base
# Recipe:: default
#
# Copyright (C) 2012 Adam Duro
#
# All rights reserved - Do Not Redistribute
#

include_recipe "apt"

# Install htop
package "htop" do
  action :install
end

# Install Finger
package "finger" do
  action :install
end

# Install Git
package "git" do
  action :install
end
