# nvim

Configuration for Neovim. Please note that I use `init.vim` for my configuration, not `.vimrc` or `.nvimrc`. See [this issue](https://github.com/neovim/neovim/issues/3530).

To create the symlinks in the home directory, run the following command from **this** directory:

```sh
stow . --target ~
```

## Plugins

I use [vim-plug](https://github.com/junegunn/vim-plug) as my Neovim plugin manager.

Plugins:

- [far.vim](https://github.com/brooth/far.vim): find and replace text through multiple files.
- [gruvbox](https://github.com/morhetz/gruvbox): retro groove color scheme.
- [nerdcommenter](https://github.com/preservim/nerdcommenter): comment/uncomment.
- [UltiSnips](https://github.com/sirver/UltiSnips): snippets.
- [vim-airline](https://github.com/vim-airline/vim-airline): status/tabline.
- [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes): themes for vim-airline.
- [vim-highlighted-yank](https://github.com/machakann/vim-highlightedyank): highlight yank area.
- [vim-signify](https://github.com/mhinz/vim-signify): show added/removed lines in files managed by a VCS (e.g. git).
- [vim-snippets](https://github.com/honza/vim-snippets): snippet files.


Install plugins:

```sh
nvim
:PlugInstall
```

