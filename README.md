# MarkPinecone's .dotfiles (MacOS)

### Requirements

- npm _for lsp-language-srv-install_
- Alacritty <br/>
- Packer <br/>
- NeoVim <br/>
- RipGrep
- https://github.com/epk/SF-Mono-Nerd-Font _Nerd-Font_ <br/>
- https://github.com/iamcco/markdown-preview.nvim _markdown-preview_ <br/>

```bash
brew install neovim ripgrep fzf
brew install --cask alacritty


# Install Packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

### Installation

```bash
ln -s ./nvim ~/.config/nvim

ln -s ./alacritty ~/.config/alacritty

ln -s ./tmux/.tmux.conf ~/.tmux.conf
```

Original NeoVim/Tmux config by this guy -> https://github.com/josean-dev/dev-environment-files

#### TODO

- automatic setup script
