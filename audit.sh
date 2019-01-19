#!/bin/bash
sudo apt-get install chkrootkit
sudo apt-get install rkhunter
audo apt-get install lynis
wget https://raw.githubusercontent.com/mzet-/linux-exploit-suggester/master/linux-exploit-suggester.sh -O les.sh -P /tmp
wget https://meltdown.ovh -O spectre-meltdown-checker.sh -P /tmp

sudo chkrootkit
sudo rkhunter -c
sudo lynis -c
chmod +x /tmp/spectre-meltdown-checker.sh
sudo ./spectre-meltdown-checker.sh
chmod +x /tmp/les.sh
./les.sh

