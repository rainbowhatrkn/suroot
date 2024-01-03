cp .bashrc ../
chmod +x ../.bashrc
apt install -y cowsay
echo 'SECRET_PASSWORD="trkn"' >> .env
bash root.sh
cd root
# cd HostDarkWeb
# chmod +x *
# bash HostOnion 
