#!/bin/bash


red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

echo "${red}UPDATING and UPGRADING your system${reset}"
sudo apt-get -y update
sudo apt-get -y upgrade

echo "${red}INSTALLING DEPENDENCIES${reset}"

sudo apt-get install -y libcurl4-openssl-dev
sudo apt-get install -y libssl-dev
sudo apt-get install -y jq
sudo apt-get install -y ruby-full
sudo apt-get install -y libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev
sudo apt-get install -y build-essential libssl-dev libffi-dev python-dev
sudo apt-get install -y python-setuptools
sudo apt-get install -y libldns-dev
sudo apt-get install -y python3-pip
sudo apt-get install -y python-pip
sudo apt-get install -y python-dnspython
sudo apt-get install -y git
sudo apt-get install -y rename
sudo apt-get install -y xargs

echo "${green}INSTALLATION WILL START NOW! HOLD UP TIGHT AND GRAB SOME COFFEE!!"


#install go
echo "${red}Installing Golang${reset}"
wget https://dl.google.com/go/go1.13.4.linux-amd64.tar.gz
sudo tar -xvf go1.13.4.linux-amd64.tar.gz
sudo mv go /usr/local
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
echo 'export GOROOT=/usr/local/go' >> ~/.bash_profile
echo 'export GOPATH=$HOME/go'	>> ~/.bash_profile			
echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.bash_profile	
source ~/.bash_profile
sleep 1
echo "${green}Installed${reset}"


#Don't forget to set up AWS credentials!
echo "${red}Installing awscli${reset}"
apt install -y awscli
echo "${green}Installed${reset}"


#create a directory recon
mkdir ~/recon
cd ~/recon/

#install Sublist3r
echo "${red}Installing Sublist3r${reset}"
git clone https://github.com/aboul3la/Sublist3r.git
cd Sublist3r*
pip3 install -r requirements.txt
cd ~/recon/
echo "${green}Installed${reset}"

#install dirsearch
echo "${red}Installing dirsearch${reset}"
git clone https://github.com/maurosoria/dirsearch.git
cd ~/recon/
echo "${green}Installed${reset}"

#install Subfinder
echo "${red}Installing Subfinder${reset}"
git clone https://github.com/subfinder/subfinder.git
cd subfinder/cmd/subfinder*
go build .
mv subfinder /usr/local/bin/
cd ~/recon/
echo "${green}Installed${reset}"

#install JSparser
echo "${red}Installing JSParser${reset}"
git clone https://github.com/nahamsec/JSParser.git
cd JSParser*
sudo python setup.py install
cd ~/recon/
echo "${green}Installed${reset}"

#install sqlmap
echo "${red}Installing sqlmap${reset}"
git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap-dev
cd ~/recon/
echo "${green}Installed${reset}"

#install nmap
echo "${red}Installing nmap${reset}"
sudo apt-get install -y nmap
echo "${green}Installed${reset}"

#install massdns
echo "${red}Installing massdns${reset}"
git clone https://github.com/blechschmidt/massdns.git
cd massdns
make
cd ~/recon/
echo "${green}Installed${reset}"

#install asnlookup
echo "${red}Installing asnlookup${reset}"
git clone https://github.com/yassineaboukir/asnlookup.git
cd asnlookup
pip install -r requirements.txt
cd ~/recon/
echo "${green}Installed${reset}"

#install httprobe
echo "${red}Installing httprobe${reset}"
go get -u github.com/tomnomnom/httprobe 
echo "${green}Installed${reset}"

#install waybackurls 
echo "${red}Installing waybackurls${reset}"
go get github.com/tomnomnom/waybackurls
echo "${green}Installed${reset}"

#install metabigor
echo "${red}Installing metabigor${reset}"
go get -u github.com/j3ssie/metabigor
echo "${green}Installed${reset}"

#install hakrawler
echo "${red}Installing hakrawler${reset}"
go get github.com/hakluke/hakrawler
echo "${green}Installed${reset}"

#install brutespray
echo "${red}Installing brutespray${reset}"
apt-get install brutespray
echo "${green}Installed${reset}"

#install sub404
echo "${red}Installing sub404${reset}"
git clone https://github.com/r3curs1v3-pr0xy/sub404.git
cd sub404
pip3 install -r requirements.txt
cd ~/recon/
echo "${green}Installed${reset}"

#install SubOver
echo "${red}Installing SubOver${reset}"
go get github.com/Ice3man543/SubOver
echo "${green}Installed${reset}"

#install ParamSpider
echo "${red}Installing ParamSpider${reset}"
git clone https://github.com/devanshbatham/ParamSpider
cd ParamSpider
pip3 install -r requirements.txt
cd ~/recon/
echo "${green}Installed${reset}"

#install OpenRedireX
echo "${red}Installing OpenRedireX${reset}"
git clone https://github.com/devanshbatham/OpenRedireX
echo "${green}Installed${reset}"

#install gitrob
echo "${red}Installing gitrob${reset}"
go get github.com/michenriksen/gitrob
echo "${green}Installed${reset}"

#install teh_s3_bucketeers
echo "${red}Installing teh_s3_bucketeers${reset}"
git clone https://github.com/tomdev/teh_s3_bucketeers.git
cd ~/recon/
echo "${green}Installed${reset}"

#install lazys3
echo "${red}Installing lazys3${reset}"
git clone https://github.com/nahamsec/lazys3.git
cd ~/recon/
echo "${green}Installed${reset}"

#install knock.py
echo "${red}Installing knock.py${reset}"
git clone https://github.com/guelfoweb/knock.git
cd ~/recon/
echo "${green}Installed${reset}"

#install fuff
echo "${red}Installing fuff${reset}"
go get github.com/ffuf/ffuf
echo "${green}Installed${reset}"

#install httpx
echo "${red}Installing httpx${reset}"
wget https://github.com/projectdiscovery/httpx/releases/download/v0.0.8/httpx_0.0.8_linux_386.tar.gz
tar -xvf httpx_0.0.8_linux_386.tar.gz
mv httpx /usr/local/bin
echo "${green}Installed${reset}"

#install unfurl
echo "${red}Installing unfurl${reset}"
go get -u github.com/tomnomnom/unfurl
echo "${green}Installed${reset}"

#install gau
echo "${red}Installing gau${reset}"
wget https://github.com/lc/gau/releases/download/v1.0.3/gau_1.0.3_linux_386.tar.gz
tar xvf gau_1.0.3_linux_386.tar.gz
mv gau /usr/bin/gau
echo "${green}Installed${reset}"


#install seclists
echo "${red}Downloading SecLists${reset}"
cd ~/recon/
git clone https://github.com/danielmiessler/SecLists.git
cd ~/tools/SecLists/Discovery/DNS/
## came to know about this issue from nahamsec that This file breaks massdns so it needs to be cleaned :)
cat dns-Jhaddix.txt | head -n -14 > clean-jhaddix-dns.txt
cd ~/recon/
echo "${green}Download Completed${reset}"



echo -e "\n\n\n\n\n\n\n\n\n\n\n${red}We are done with the installation!${reset}"
echo "${red}NOTE:${reset}You need to set up your AWS Creds by your own for ${green}awscli${reset}"

