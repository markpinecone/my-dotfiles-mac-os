# MarkPinecone's .dotfiles (MacOS)

### Requirements

- MacOS <br/>
- Alacritty <br/>
- Packer <br/>
- NeoVim <br/>
- RipGrep
- SF-Nerd-Font https://github.com/epk/SF-Mono-Nerd-Font <br/>

```bash
brew install neovim ripgrep
brew install --cask alacritty


# Install Packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

### Installation

```bash
ln -s ./nvim ~/.config/nvim

ln -s ./alacritty ~/.config/alacritty
```

Original NeoVim config by this guy -> https://github.com/josean-dev/dev-environment-files

##TODO

- automatic setup script
