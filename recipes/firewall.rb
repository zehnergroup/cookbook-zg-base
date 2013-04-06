# Configure the firewall
firewall "ufw" do
  action :enable
end

firewall_rule "SSH" do
  port 22
  action :allow
  notifies :enable, "firewall[ufw]"
end

# We often times use port 30000 for SSH
firewall_rule "alternative SSH" do
    port 30000
end

firewall_rule "HTTP/HTTPS" do
  ports [80, 443]
  protocol :tcp
  position 1
  action :allow
end

# Mainly needed for development using Vagrant + Virtualbox
# Vagrant forwards port 22 to 2222
firewall_rule "Vagrant" do
  port 2222
  action :allow
end


