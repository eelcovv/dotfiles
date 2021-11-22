# git

Global configuration for git.

To create the symlinks in the home directory, run the following command from **this** directory:

```sh
unlink ~/.config/git/gitk && stow . --target ~
```

Note: gitk rewrites its config file every time it's launched. That's why we unlink it first.
