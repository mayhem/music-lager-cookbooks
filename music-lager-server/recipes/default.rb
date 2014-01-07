directory "/usr/local/logstash" do
  owner "root"
  group "root"
  mode 0755
  action :create
end

directory "/usr/local/logstash/jar" do
  owner "root"
  group "root"
  mode 0755
  action :create
end

directory "/usr/local/logstash/conf" do
  owner "root"
  group "root"
  mode 0755
  action :create
end

remote_file "/usr/local/logstash/jar/logstash-1.3.2-flatjar.jar" do
  source "https://download.elasticsearch.org/logstash/logstash/logstash-1.3.2-flatjar.jar"
  mode 00644
end

cookbook_file "/usr/local/logstash/conf/indexer.conf" do
  source "indexer.conf"
  group "root"
  owner "root"
  mode "0755"
end

cookbook_file "/usr/local/logstash/conf/shipper.conf" do
  source "shipper.conf"
  group "root"
  owner "root"
  mode "0755"
end

directory "/usr/local/music-lager-server" do
  owner "root"
  group "root"
  mode 0755
  action :create
end

service "elasticsearch" do
  action :start
end

service "redis" do
  action :start
end
