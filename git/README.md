# git

Global configuration for git.

To create the symlinks in the home directory, run the following command from **this** directory:

```sh
unlink ~/.config/git/gitk && stow . --target ~
```

Note: gitk rewrites its config file every time it's launched. That's why we unlink it first.

Examples of a `.gitmessage` template:

- [Git Gud: Create a .gitmessage](https://dev.to/vetswhocode/git-gud-create-a-gitmessage-4ibj)
- [angular's .gitmessage](https://github.com/angular/angular/blob/master/.gitmessage)

Check the `.gitmessage` template used globally:

```sh
git config --global --get commit.template
```

Check the `.gitmessage` template used in the current git repository:

```sh
git config --local --get commit.template
```
