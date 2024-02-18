echo "Installing Rust"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source "$HOME/.cargo/env"

echo "Installed Rust"

echo "Installing Ncspot Spotify-client"
git clone https://github.com/hrkfdn/ncspot.git
cd ncspot
cargo install cargo-deb
cargo deb
echo "Installed NCspot"

cd ..