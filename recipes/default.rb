#
# Cookbook Name:: zg-base
# Recipe:: default
#
# Copyright (C) 2012 Adam Duro
#
# All rights reserved - Do Not Redistribute
#

include_recipe "apt"

package "htop"
package "finger"
package "git"
