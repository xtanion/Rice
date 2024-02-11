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
curl -sS https://download.spotify.com/debian/pubkey_6224F9941A8AA6D1.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list


sudo apt-get update && sudo apt-get install spotify-client

# Installing vscode
echo "Installing VS Code"
wget https://go.microsoft.com/fwlink/?LinkID=760868
sudo apt install code*

# Installing zsh
echo "Installing and chaning to ZSH"
sudo apt install zsh -y
chsh -s $(which zsh)
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

rm -rf .temp
