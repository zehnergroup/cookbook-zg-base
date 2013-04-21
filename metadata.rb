name             "zg-base"
maintainer       "ZehnerGroup"
maintainer_email "aduro@zehnergroup.com"
license          "All rights reserved"
description      "Installs/Configures a generic base server profile"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1.2"

depends "apt",        "= 1.8.4"
depends "firewall",   "= 0.10.2"
