cd /tmp/
rm -f check-mk-agent_1.2.8p20-1_all.deb
wget http://ftp.lihas.de/debian/packages/check-mk-agent_1.2.8p20-1_all.deb
sudo apt-get install xinetd -y
sudo dpkg -i check-mk-agent_1.2.8p20-1_all.deb
sudo rm -f /etc/xinetd.d/check_mk
sudo cp checkmk-agent/check_mk.conf /etc/xinetd.d/check_mk
sudo /etc/init.d/xinetd restart

# Open firewall allow access from OMD to agent for port 6556

