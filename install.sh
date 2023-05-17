# Pre Requisite
apt update
apt install vim-gtk xclip ripgrep curl universal-ctags build-essential cmake vim-nox python3-dev fuse libfuse2 git python3-pip ack-grep -y
apt install mono-complete golang nodejs default-jdk npm -y
pip3 install pynvim

# NeoVim Nightly Version
wget --quiet https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage --output-document nvim
chmod +x nvim
sudo chown root:root nvim
sudo mv nvim /usr/bin
cd ~
mkdir -p .config/nvim

# Vim-Plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Plugins
cd ~/eupnvim/
cp -R .ctags.d ~/
cp init.vim ~/config/nvim/init.vim
