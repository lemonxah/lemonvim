# Install
  git clone https://github.com/lemonxah/lemonvim ~/.config/nvim

  sudo pacman -S base-devel go unzip rustup npm yarn zig git openssh pacman-pip
  rustup default stable
  cargo install sqlx-cli
  mkdir git
  cd git
  git clone https://github.com/wslutilities/wslu.git
  cd wslu
  sh configure.sh
  make
  sudo make install
  sudo ln -s /usr/bin/wslview /usr/bin/xdg-open
  

# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.
