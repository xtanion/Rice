echo "Making temp directory"
mkdir .temp
cd .temp
sudo apt-get install -y wget gpg gnome-tweaks chrome-gnome-shell curl
sudo apt install -y build-essential

# removing snap and snapd

# installing chrome
echo "Installing Chrome"

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

# Installing spotify
echo "Installing Spotify"
curl -sS https://download.spotify.com/debian/pubkey_7A3A762FAFD4A51F.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list


sudo apt-get update && sudo apt-get install spotify-client

# Installing vscode
echo "Installing VS Code"
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt install code
rm -f packages.microsoft.gpg

rm -rf .temp

# Installing zsh
echo "Installing and chaning to ZSH"
sudo apt install zsh -y
chsh -s $(which zsh)
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"


