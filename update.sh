echo "Updating your Masternode to the latest version! Please wait ...."
sudo apt-get install -y libdb5.3++-dev
Taliumd stop
wget https://github.com/taliumtech/talium/releases/download/2.0/talium-2.0-linux-headless.tar.gz
sudo chmod 775 talium-2.0-linux-headless.tar.gz
sudo tar xfvz talium-2.0-linux-headless.tar.gz
sudo chmod 775 Taliumd
sudo rm /usr/bin/Taliumd
sudo mv Taliumd /usr/bin/Taliumd
Taliumd -daemon
echo "All done! Please start your masternode from your controller wallet!"
