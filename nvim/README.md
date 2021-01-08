# nvim

Configuration for Neovim. Please note that I use `init.vim` for my configuration, not `.vimrc` or `.nvimrc`. See [this issue](https://github.com/neovim/neovim/issues/3530).

To create the symlinks in the home directory, run the following command from **this** directory:

```sh
stow . --target ~
```

## Plugins

I use [vim-plug](https://github.com/junegunn/vim-plug) as my Neovim plugin manager.

Don't forget to install the plugin manager before installing the plugins.

Plugins:

- [Conquer of Completion](https://github.com/neoclide/coc.nvim): code completion.
- [ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim): fuzzy finder, à la VSCode
- [Emmet-vim](https://github.com/mattn/emmet-vim)
- [far.vim](https://github.com/brooth/far.vim): find and replace text through multiple files.
- [goyo.vim](https://github.com/junegunn/goyo.vim): focused writing.
- [gruvbox](https://github.com/morhetz/gruvbox): retro groove color scheme.
- [Limelight](https://github.com/junegunn/limelight.vim): focused writing/reading.
- [NERD Commenter](https://github.com/preservim/nerdcommenter): comment functions.
- [NERDTree](https://github.com/preservim/nerdtree): file explorer.
- [vim-airline](https://github.com/vim-airline/vim-airline): status/tabline.
- [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes): themes for vim-airline.
- [vim-highlighted-yank](https://github.com/machakann/vim-highlightedyank): highlight yank area.
- [vim-signify](https://github.com/mhinz/vim-signify): show added/removed lines in files managed by a VCS (e.g. git).
- [vim-startify](https://github.com/mhinz/vim-startify): fancy start screen.
- [zig.vim](https://github.com/ziglang/zig.vim) syntax highlighting for zig.

Install plugins in Neovim command mode:

```sh
nvim
:PlugInstall
```

See Also:

- the custom mappings [here](https://github.com/Optixal/neovim-init.vim/blob/master/init.vim)
