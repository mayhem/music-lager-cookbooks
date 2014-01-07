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
