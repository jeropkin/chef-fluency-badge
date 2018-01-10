#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

if node['platform'] == "rhel"
	package = "httpd"
elseif node['platform'] == "debian"
	package = "apache2"
end

package 'apache2' do
	package_name package
	action :install
end

service 'apache2' do
	service_name package
	action [:start, :enable]
end

