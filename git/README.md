# git

Global configuration for git.

git supports the [XDG Base Directory specification](https://wiki.archlinux.org/title/XDG_Base_Directory).

To create a symlink to the `XDG_CONFIG_HOME` directory, run the following command from **this** directory:

```sh
stow . --target ~/ --verbose 2
```

## .gitmessage

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

## See also

- [Other useful git aliases](https://gist.github.com/pksunkara/988716)
- [git tips](https://github.com/servo/servo/wiki/Github-workflow#git-tips)
- [Other useful diff/merge tools](https://stackoverflow.com/questions/572237/whats-the-best-three-way-merge-tool)
