# Installing Orchis theme
echo "Installing Orchis"
cd orchis-theme
./install.sh -l --tweaks macos black -c dark --shell 44

cd ..

echo "Installed Orchis"
echo "Installing flat-remix shell theme"
cd Flat-Remix-Blue
cp -r * ~/.themes

echo "powerlevel10k for zsh"
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
echo "change ZSH_THEME=powerlevel10k/powerlevel10k"
nano ~/.zshrc