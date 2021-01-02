# tmux

Configuration for tmux.

To create the symlinks in the home directory, run the following command from **this** directory:

```sh
stow . --target ~
```

Note: I tries to put my Tmux config in `~/.config/tmux/tmux.conf` but it didn't work. I don't know why, but it seems `XDG_CONFIG_HOME` is not recognized. So I keep `.tmux.conf` in my HOME directory.

## Plugins

I use [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) to manage tmux plugins.

Plugins:

- [resurrect](https://github.com/tmux-plugins/tmux-resurrect)
- [continuum](https://github.com/tmux-plugins/tmux-continuum)
- [gruvbox](https://github.com/egel/tmux-gruvbox)
- [sensible](https://github.com/tmux-plugins/tmux-sensible)

Press `prefix` + `I` (capital i, as in Install) to fetch the plugin.
The default `prefix` keybinding is `Ctrl` + `b`.

See also:

- [My Writing & Coding Workflow](http://jacobzelko.com/workflow/), by Jacob Zelko.