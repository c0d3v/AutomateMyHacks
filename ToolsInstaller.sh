#!/bin/bash
sudo cd /opt/
echo "[+] Strat Installing This Will Take A While"
apt update 
apt install iw aircrack-ng iproute2 procps procps-ng libssl-dev libnl-dev awk gawk pciutils crunch mdk4 hostapd lighttpd iptables  -y
apt install vim nano neofetch apktool nmap ruby bundler wget curl perl git python3-pip python3-wheel -y
apt install gcc g++ xterm hydra ettercap-text-only wireshark libpcap libusb tshark net-tools libpcap libnet make apache2 tor nginx -y
apt install hcxdumptool hostapd ettercap-graphical isc-dhcp-server dnsmasq reaver bully openssl pixiewps hcxtools -y
apt install metasploit-framework openjdk-11-jre openjdk-11-jdk -y

echo "[+] Installing Airgeddon ..."
git clone https://github.com/v1s1t0r1sh3r3/airgeddon.git
echo "[+] Installing Bettercap ..."
git clone https://github.com/bettercap/bettercap.git
echo "[+] Installing Beef-XSS ..."
git clone https://github.com/beefproject/beef.git
./beef/install
echo "[+] Installing Exploit-DB ..."
git clone https://github.com/offensive-security/exploitdb.git /opt/exploitdb
ln -sf /opt/exploitdb/searchsploit /usr/local/bin/searchsploit
echo "[+] Installing Maltego ..."
wget https://maltego-downloads.s3.us-east-2.amazonaws.com/linux/Maltego.v4.2.19.13940.deb
apt install ./Maltego.v4.2.19.13940.deb -y

echo "[+] Installing Responder ..."
git clone https://github.com/SpiderLabs/Responder.git
python3 -m pip install poetry

echo "[+] Installing Powershell-Empire ..."
git clone --recursive https://github.com/BC-SECURITY/Empire.git
./Empire/setup/install.sh
poetry install

echo "[+] Installing Anonsurf ..."
git clone https://github.com/Und3rf10w/kali-anonsurf.git
chmod +x kali-anonsurf/installer.sh
./kali-anonsurf/installer.sh

