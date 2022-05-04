# direnv

Configuration for direnv.

direnv supports the [XDG Base Directory specification](https://wiki.archlinux.org/title/XDG_Base_Directory).

To create a symlink to the `XDG_CONFIG_HOME` directory, run the following command from **this** directory:

```sh
stow . --target ~/ --verbose 2
```

## NVM integration

In every project where you are using [nvm](https://github.com/direnv/direnv#the-stdlib) to manage the Node.js version, add a line that calls the `use_nodejs` function defined in the `direnvrc` file.

For example, in one of your Node.js project's you might have a `.envrc` like this:

```sh
use_nodejs 16.14.0
```

Don't forget to execute `direnv allow` the first time and every time you make a change to the `.envrc` of your project.

See also [Using direnv to manage tool versions](https://blog.differentpla.net/blog/2019/01/30/direnv-tool-versions/).
