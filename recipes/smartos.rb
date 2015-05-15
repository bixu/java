package "openjdk#{node['java']['jdk_version']}" do
	action :install
end
