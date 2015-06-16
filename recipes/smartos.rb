execute "install java" do
  command "pkgin -y install openjdk#{node['java']['jdk_version']}"
  not_if "pkgin list | grep openjdk#{node['java']['jdk_version']}"
end

include_recipe 'java::set_java_home'
