# Installing Orchis theme
echo "Installing Orchis"
cd orchis-theme
./install.sh -l --tweaks macos black -c dark --shell 44

cd ..

echo "Installed Orchis"
echo "Installing flat-remix shell theme"
cd Flat-Remix-Blue
cp -r * ~/.themes

cd ..

echo "powerlevel10k for zsh"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc


echo "Copying flat-remix files"
pwd
sudo cp -r flat-remix-gnome/themes/Flat-Remix-Blue-Darkest /usr/share/themes

echo "installing white sur icons"
cd WhiteSur-icon-theme
./install.
cd ..

echo "Done!"
