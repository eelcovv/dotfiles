# alacritty

Configuration for the [alacritty](https://github.com/alacritty/alacritty) terminal emulator.

To create the symlinks in the home directory, run the following command from **this** directory:

```sh
stow . --target ~
```

## Fonts

alacritty uses `monospace` as its default font on Linux.
If you want to use a different font, you need to install it first.

I use some fonts from [nerd-fonts](https://github.com/ryanoasis/nerd-fonts). See instructions there.

You can preview the fonts [here](https://www.nerdfonts.com/font-downloads).

Use this command to list all fonts installed on your system:

```sh
fc-list : family style
```

