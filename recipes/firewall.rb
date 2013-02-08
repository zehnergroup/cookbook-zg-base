# Configure the firewall
firewall "ufw" do
  action :enable
end

firewall_rule "ssh" do
  port 22
  action :allow
  notifies :enable, "firewall[ufw]"
end

# We often times use port 30000 for SSH
firewall_rule "altnernative_ssh" do
    port 30000
end

# Vagrant forwards port 22 to 2222
firewall_rule "vagrant_forward" do
  port 2222
  action :allow
end
firewall_rule "http/https" do
  ports [80, 443]
  protocol :tcp
  position 1
  action :allow
end
