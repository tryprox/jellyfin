sudo apt update && sudo apt upgrade -y
sudo apt install apt-transport-https ca-certificates gnupg2 curl git -y
wget -O - https://repo.jellyfin.org/jellyfin_team.gpg.key | sudo apt-key add -
echo "deb [arch=$( dpkg --print-architecture )] https://repo.jellyfin.org/ubuntu focal main" | sudo tee /etc/apt/sources.list.d/jellyfin.list
apt update -y 
apt install jellyfin -y
clear
systemctl start jellyfin
sudo systemctl enable jellyfin
systemctl status jellyfin
