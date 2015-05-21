package "apache2"

file "/var/www/html/index.html" do
  content "<h1>Hello, world!</h1>
  IPADDRESS: #{node["ipaddress"]}
  HOSTNAME : #{node["hostname"]}
"
end

service "apache2" do
  action [:start, :enable]
end
