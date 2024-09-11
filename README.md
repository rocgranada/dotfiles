# Dotfiles
Personal Dotfiles repository. I want them re-usable between my PC, laptop and work laptop.

## Installation

### Preapre the dotfiles
```bash
# Clone repository to home folder
cd ~ && git clone git@github.com:rocgranada/dotfiles.git

# Create symlinks to repository dotfiles
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.p10k.zsh ~/.p10k.zsh
ln -s ~/dotfiles/.config/nvim ~/.config/nvim
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
```

### Install dependencies

- Install [zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH):

```bash
sudo apt install zsh
chsh -s $(which zsh)
```

- Install [oh-my-zsh](https://ohmyz.sh/#install):
```bash
# Important to keep the current .zshrc file with the --keep-zshrc param
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --keep-zshrc
```

- Install [oh-my-zsh](https://ohmyz.sh/#install) plugins:
```bash
git clone --depth 1 https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone --depth 1 https://github.com/marlonrichert/zsh-autocomplete.git ~/.oh-my-zsh/custom/plugins/zsh-autocomplete
git clone --depth 1 https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone --depth 1 https://github.com/MichaelAquilina/zsh-you-should-use.git  ~/.oh-my-zsh/custom/plugins/you-should-use
git clone --depth 1 https://github.com/fdellwing/zsh-bat.git  ~/.oh-my-zsh/custom/plugins/zsh-bat
git clone --depth 1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k
```

- Install [nvim](https://github.com/neovim/neovim/blob/master/INSTALL.md).
_(On linux, the binary is already added to the PATH on the .zshrc file)_:q

- Install [Packer](https://github.com/wbthomason/packer.nvim?tab=readme-ov-file#requirements):
```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\ ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

- Install [tmux](https://github.com/tmux/tmux/wiki/Installing):
```bash
sudo apt install tmux
```

- Install [Kanagawa waves](https://github.com/rebelot/kanagawa.nvim/tree/master?tab=readme-ov-file#extras) terminal window color.
 - [iTerm2 installation](https://github.com/mbadolato/iTerm2-Color-Schemes/blob/master/README.md)

