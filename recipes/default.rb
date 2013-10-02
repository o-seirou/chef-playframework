#
# Cookbook Name:: playframework
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "unzip" do
	action :install
end

remote_file "#{Chef::Config[:file_cache_path]}/play-#{node[:playframework][:version]}.zip" do
	source "http://downloads.typesafe.com/#{node[:playframework][:repo_path]}play-#{node[:playframework][:version]}.zip"
	mode 0644
	only_if do ! File.exists?("/usr/local/play") end
end

bash "extract_play" do
	cwd Chef::Config[:file_cache_path]
	code <<-EOH
		unzip play-#{node[:playframework][:version]}.zip
		mv #{Chef::Config[:file_cache_path]}/play-#{node[:playframework][:version]} /usr/local/play
	EOH
	only_if do ! File.exists?("/usr/local/play") end
end
