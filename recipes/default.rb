#
# Cookbook:: my_haproxy
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

node.default['haproxy']['members'] = [
  {
    "hostname" => "ec2-18-209-190-187.compute-1.amazonaws.com",
    "ipaddress" => "18.209.190.187",
    "port" => 80,
    "ssl_port" => 80
  },
  {
    "hostname" => "ec2-52-91-98-192.compute-1.amazonaws.com",
    "ipaddress" => "52.91.98.192",
    "port" => 80,
    "ssl_port" => 80
  }
]

include_recipe 'haproxy::manual'

