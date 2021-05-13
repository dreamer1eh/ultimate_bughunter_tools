echo "       _ _   _                 _           _     _     _    "
echo " _   _| | |_(_)_ __ ___   __ _| |_ ___    | |__ | |__ | |_  "
echo "| | | | | __| | '_ ' _ \ / _' | __/ _ \   | '_ \| '_ \| __| "
echo "| |_| | | |_| | | | | | | (_| | ||  __/   | |_) | | | | |_  "
echo " \__,_|_|\__|_|_| |_| |_|\__,_|\__\___|___|_.__/|_| |_|\__| "
echo "                                     |_____|                "
echo "						v1.0 "
echo " <-------{Ultimate Bug Hunting Tools v1.0}-------> "

echo " \n\n "

echo "  _  _   __              _ "
echo " | -- | /   _  _| _  _| |_)  o "
echo " |_--_| \__(_)(_|(/_(_| |_)\/o "
echo "                          _/ "
echo "                              "
echo "                         ____ "
echo "                        |  _ \ _ __ ___  __ _ _ __ ___   ___ _ __  "
echo "                        | | | | '__/ _ \/ _' | '_ ' _ \ / _ \ '__| "
echo "                        | |_| | | |  __/ (_| | | | | | |  __/ | "
echo "                        |____/|_|  \___|\__,_|_| |_| |_|\___|_| "

echo "\n\n"

echo "{$}Installing libcurl4-openssl-dev..."
sudo apt-get install libcurl4-openssl-dev
echo "\n"
echo "{$}Installing libssl-dev..."
sudo apt-get install libssl-dev
echo "\n"
echo "{$}Installing jq..."
sudo apt-get install jq
echo "\n"
echo "{$} Installing ruby-full..."
sudo apt-get install ruby-full
echo "\n"
echo "{$} Installing libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev..."
sudo apt-get install libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev
echo "\n"
echo "{$} Installing build-essential libssl-dev libffi-dev python-dev..."
sudo apt-get install build-essential libssl-dev libffi-dev python-dev
echo "\n"
echo "{$} Installing python-setuptools..."
sudo apt-get install python-setuptools
echo "\n"
echo "{$} Installing libldns-dev..."
sudo apt-get install libldns-dev
echo "\n"
echo "{$} Installing python3-pip..."
sudo apt-get install python3-pip
echo "\n"
echo "{$} Installing dnspython..."
sudo pip install dnspython
echo "\n"
echo "{$} Installing git..."
sudo apt-get install git
echo "\n"


mkdir ~/ultimate_bht
cd ~/ultimate_bht/

echo "[#] Installing bash_profile aliases from recon_profile..."
git clone https://github.com/nahamsec/recon_profile.git
cd recon_profile
cat bash_profile >> ~/.bash_profile
source ~/.bash_profile
echo "[+] Done"
cd ~/ultimate_bht/
echo "\n"

echo "[#] Downloading Aquatone..."
git clone https://github.com/michenriksen/aquatone.git
echo "[+] Done "
cd ~/ultimate_bht/
echo "\n"

echo "[#] Downloading dnscan..."
git clone https://github.com/rbsec/dnscan
echo "[+] Done "
cd ~/ultimate_bht/
echo "\n"

echo "[#] Downloading knockpy..."
git clone https://github.com/dreamer1eh/knockpy
echo "[+] Done "
cd ~/ultimate_bht/
echo "\n"

echo "[#] Downloading Sublist3r..."
git clone https://github.com/dreamer1eh/Sublist3r
echo "[+] Done "
cd ~/ultimate_bht/
echo "\n"

echo "[#] Downloading massdns..."
git clone https://github.com/blechschmidt/massdns
echo "[+] Done "
cd ~/ultimate_bht/
echo "\n"

echo "[#] Downloading masscan..."
git clone https://github.com/robertdavidgraham/masscan
echo "[+] Done "
cd ~/ultimate_bht/
echo "\n"

echo "[#] Downloading EyeWitness..."
git clone https://github.com/ChrisTruncer/EyeWitness
echo "[+] Done "
cd ~/ultimate_bht/
echo "\n"

echo "[#] Downloading dirsearch..."
git clone https://github.com/maurosoria/dirsearch
echo "[+] Done "
cd ~/ultimate_bht/
echo "\n"

echo "[#] Downloading gitrob..."
git clone https://github.com/michenriksen/gitrob
echo "[+] Done "
cd ~/ultimate_bht/
echo "\n"

echo "[#] Downloading git-secrets..."
git clone https://github.com/awslabs/git-secrets
echo "[+] Done "
cd ~/ultimate_bht/
echo "\n"

echo "[#] Downloading GoogD0rker..."
git clone https://github.com/ZephrFish/GoogD0rker/
echo "[+] Done "
cd ~/ultimate_bht/
echo "\n"

echo "[#] Downloading Sn1per..."
git clone https://github.com/1N3/Sn1per/
echo "[+] Done "
cd ~/ultimate_bht/
echo "\n"

echo "[#] Downloading xray..."
git clone https://github.com/evilsocket/xray
echo "[+] Done "
cd ~/ultimate_bht/
echo "\n"

echo "[#] Downloading wfuzz..."
git clone https://github.com/xmendez/wfuzz/
echo "[+] Done "
cd ~/ultimate_bht/
echo "\n"

echo "[#] Downloading patator..."
git clone https://github.com/lanjelot/patator
echo "[+] Done "
cd ~/ultimate_bht/
echo "\n"

echo "[#] Downloading datasploit..."
git clone https://github.com/DataSploit/datasploit
echo "[+] Done "
cd ~/ultimate_bht/
echo "\n"

echo "[#] Downloading thc-hydra..."
git clone https://github.com/vanhauser-thc/thc-hydra
echo "[+] Done "
cd ~/ultimate_bht/
echo "\n"

echo "[#] Downloading changeme..."
git clone https://github.com/ztgrace/changeme
echo "[+] Done "
cd ~/ultimate_bht/
echo "\n"

echo "[#] Downloading dex2jar..."
git clone https://sourceforge.net/projects/dex2jar/
echo "[+] Done "
cd ~/ultimate_bht/
echo "\n"

echo "[#] Downloading oxml_xxe..."
git clone https://github.com/BuffaloWill/oxml_xxe/
echo "[+] Done "
cd ~/ultimate_bht/
echo "\n"

echo "[#] Downloading XXEinjector..."
git clone https://github.com/enjoiz/XXEinjector
echo "[+] Done "
cd ~/ultimate_bht/
echo "\n"

echo "[#] Downloading jwt_tool..."
git clone https://github.com/ticarpi/jwt_tool
echo "[+] Done "
cd ~/ultimate_bht/
echo "\n"

echo "[#] Downloading ground-control..."
git clone https://github.com/jobertabma/ground-control
echo "[+] Done "
cd ~/ultimate_bht/
echo "\n"

echo "[#] Downloading ssrfDetector..."
git clone https://github.com/JacobReynolds/ssrfDetector
echo "[+] Done "
cd ~/ultimate_bht/
echo "\n"

echo "[#] Downloading LFISuite..."
git clone https://github.com/D35m0nd142/LFISuite
echo "[+] Done "
cd ~/ultimate_bht/
echo "\n"

echo "[#] Downloading GitTools..."
git clone https://github.com/internetwache/GitTools
echo "[+] Done "
cd ~/ultimate_bht/
echo "\n"

echo "[#] Downloading dvcs-ripper..."
git clone https://github.com/kost/dvcs-ripper
echo "[+] Done "
cd ~/ultimate_bht/
echo "\n"

echo "[#] Downloading tko-subs..."
git clone https://github.com/anshumanbh/tko-subs
echo "[+] Done "
cd ~/ultimate_bht/
echo "\n"

echo "[#] Downloading HostileSubBruteforcer..."
git clone https://github.com/nahamsec/HostileSubBruteforcer 
echo "[+] Done "
cd ~/ultimate_bht/
echo "\n"

echo "[#] Downloading race-the-web..."
git clone https://github.com/insp3ctre/race-the-web
echo "[+] Done "
cd ~/ultimate_bht/
echo "\n"

echo "[#] Downloading ysoserial..."
git clone https://github.com/GoSecure/ysoserial
echo "[+] Done "
cd ~/ultimate_bht/
echo "\n"

echo "[#] Downloading phpggc..."
git clone https://github.com/ambionics/phpggc
echo "[+] Done "
cd ~/ultimate_bht/
echo "\n"

echo "[#] Downloading CORStest..."
git clone https://github.com/RUB-NDS/CORStest
echo "[+] Done "
cd ~/ultimate_bht/
echo "\n"

echo "[#] Downloading retire.js..."
git clone https://github.com/RetireJS/retire.js
echo "[+] Done "
cd ~/ultimate_bht/
echo "\n"

echo "[#] Downloading getsploit..."
git clone https://github.com/vulnersCom/getsploit
echo "[+] Done "
cd ~/ultimate_bht/
echo "\n"

echo "[#] Downloading Findsploit..."
git clone https://github.com/1N3/Findsploit
echo "[+] Done "
cd ~/ultimate_bht/
echo "\n"

echo "[#] Downloading bfac..."
git clone https://github.com/mazen160/bfac
echo "[+] Done "
cd ~/ultimate_bht/
echo "\n"

echo "[#] Downloading CMSmap..."
git clone https://github.com/Dionach/CMSmap
echo "[+] Done "
cd ~/ultimate_bht/
echo "\n"

echo "[#] Downloading Amass..."
git clone https://github.com/OWASP/Amass
echo "[+] Done "
cd ~/ultimate_bht/
echo "\n"

echo "[#] Downloading Photon..."
git clone https://github.com/s0md3v/Photon
echo "[+] Done "
cd ~/ultimate_bht/
echo "\n"

echo "[#] Downloading Asnlookup..."
git clone https://github.com/yassineaboukir/Asnlookup.git
echo "[+] Done "
cd ~/ultimate_bht/
echo "\n"

echo "[#] Downloading crtndstry..."
git clone https://github.com/nahamsec/crtndstry.git
echo "[+] Done "
cd ~/ultimate_bht/
echo "\n"

echo "[#] Downloading JSParser..."
git clone https://github.com/nahamsec/JSParser.git
echo "[+] Done "
cd ~/ultimate_bht/
echo "\n"

echo "[#] Downloading teh_s3_bucketeers..."
git clone https://github.com/tomdev/teh_s3_bucketeers.git
echo "[+] Done "
cd ~/ultimate_bht/
echo "\n"

echo "[#] Downloading wpscan..."
git clone https://github.com/wpscanteam/wpscan.git
echo "[+] Done "
cd ~/ultimate_bht/
echo "\n"

echo "[#] Downloading lazys3..."
git clone https://github.com/nahamsec/lazys3.git
echo "[+] Done "
cd ~/ultimate_bht/
echo "\n"

echo "[#] Downloading virtual-host-discovery..."
git clone https://github.com/jobertabma/virtual-host-discovery.git
echo "[+] Done "
cd ~/ultimate_bht/
echo "\n"

echo "[#] Downloading lazyrecon..."
git clone https://github.com/nahamsec/lazyrecon.git
echo "[+] Done "
cd ~/ultimate_bht/
echo "\n"

echo "[#] Downloading SecLists..."
git clone https://github.com/danielmiessler/SecLists.git
echo "[+] Done "
cd ~/ultimate_bht/
echo "\n"

echo "[#] Downloading Mobile-Security-Framework-MobSF..."
git clone https://github.com/MobSF/Mobile-Security-Framework-MobSF/ 
echo "[+] Done "
cd ~/ultimate_bht/

echo "\n\n[*] Dowloading Finished! All tools are set up in ~/ultimate_bht"
echo "[!!] Follow Dreamer On Social Media, Contact me there for any query:"
echo "	[~] Github    : https://github.com/dreamer1eh/ "
echo "	[~] Instagram : @i_eh_dreamer {https://www.instagram.com/i_eh_dreamer/} "
echo "	[~] Twitter   : @dreamer_eh   {https://twitter.com/dreamer_eh/}"

