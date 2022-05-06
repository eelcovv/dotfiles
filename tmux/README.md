# Tmux

Configuration for [tmux](https://github.com/tmux/tmux).

tmux, since version 3.2, supports the [XDG Base Directory specification](https://wiki.archlinux.org/title/XDG_Base_Directory).

To check your tmux version, run:

```sh
tmux -V
```

To create a symlink to the `XDG_CONFIG_HOME` directory, run the following command from **this** directory:

```sh
stow . --target ~/ --verbose 2
```

## Plugins

I use [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) to manage tmux plugins.

In order to install and use Tmux plugins, you must first clone the tpm repo to the expected location:

```sh
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
```

Plugins:

- [continuum](https://github.com/tmux-plugins/tmux-continuum)
- [gruvbox](https://github.com/egel/tmux-gruvbox)
- [resurrect](https://github.com/tmux-plugins/tmux-resurrect)
- [sensible](https://github.com/tmux-plugins/tmux-sensible)

Once in Tmux, press `prefix` + `I` (capital i, as in Install) to fetch the plugin.
The default `prefix` keybinding is `Ctrl` + `b`, but I prefer `Ctrl` + `a` (see `tmux.conf`).

See also:

- [Tmux cheat sheet](https://tmuxcheatsheet.com/)
- [My Writing & Coding Workflow](http://jacobzelko.com/workflow/), by Jacob Zelko.
- [This tmux.conf](https://gist.github.com/rodricels/7951c3bd505d343b07309b76188af9b3)
- [This tmux.conf](https://github.com/wbkang/wbk-stow/blob/master/tmux-config/.tmux.conf)