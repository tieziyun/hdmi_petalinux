#setup wifi 
sudo bash -c 'cat <<EOF >> /etc/wpa_supplicant.conf
network={
    ssid="OnePlus 12R"
    psk="1234abcd"
    key_mgmt=WPA-PSK
}
EOF'

# 1) Bring up the interface
sudo ip link set wlan0 up

# 2) Launch wpa_supplicant using the legacy “wext” driver
sudo wpa_supplicant -B -i wlan0 -c /etc/wpa_supplicant.conf

# 3) Grab a DHCP lease via BusyBox udhcpc
sudo udhcpc -i wlan0

# 4) (optional) Verify
ping -c 4 google.com