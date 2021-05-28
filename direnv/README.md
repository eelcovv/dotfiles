# direnv

Configuration for direnv.

To create the symlinks in the home directory, run the following command from **this** directory:

```sh
stow . --target ~
```

## NVM integration

In every project where you are using [nvm](https://github.com/direnv/direnv#the-stdlib) to manage the Node.js version, add a line that calls the `use_nodejs` function defined in the `direnvrc` file.

For example, in one of your Node.js project's you might have a `.envrc` like this:

```sh
use_nodejs 14.17.0
```

Don't forget to execute `direnv allow` the first time and every time you make a change to the `.envrc` of your project.

See also [Using direnv to manage tool versions](https://blog.differentpla.net/blog/2019/01/30/direnv-tool-versions/).
