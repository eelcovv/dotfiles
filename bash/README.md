# bash

Configuration for bash shell.

bash does **not** support the [XDG Base Directory specification](https://wiki.archlinux.org/title/XDG_Base_Directory).

To create the symlinks in the home directory, run the following command from **this** directory:

```sh
stow . --target ~/ --verbose 2
```

See also:

- [shell startup scripts](https://blog.flowblok.id.au/2013-02/shell-startup-scripts.html)
