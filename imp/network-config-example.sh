# Copy to network-config.sh (not committed) and fill in.
# Ethernet (static)
ETH_IFACE=eth0
ETH_ADDRESS=192.168.1.50/24
ETH_GATEWAY=192.168.1.1
ETH_DNS="192.168.1.1 1.1.1.1"


##
## WiFi (DHCP; set WIFI_ADDRESS/WIFI_GATEWAY too for a static address)
##
WIFI_IFACE=wlan0
WIFI_SSID=<ssid>
WIFI_PASSWORD=<wifi-password>
WIFI_COUNTRY=US
WIFI_ADDRESS=
WIFI_GATEWAY=


##
## Cloudflare secrets
##
CLOUDFLARE_ZONE_ID=6c31e43f#secret#1a2f72925ef431636      # from Cloudflare Overview page

# Click "Get your API token" from Overview page
#    (Token Name: Edit zone DNS)
CLOUDFLARE_API_TOKEN=cfut_KdMJuESlP#secret#7Aw3hVNxEb6lyBaeNWkhzrC67b24f8a

