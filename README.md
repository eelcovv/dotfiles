# dotfiles

My personal Linux dotfiles, managed with [GNU Stow](https://savannah.gnu.org/projects/stow/).

To create the symlinks between these directories and my home, run the following command for each directory:

```sh
stow bash --target ~
stow vim --target ~
# etc...
```

I keep a portion of my ssh config in this repo, then I use `Include config_base` in my `~/.ssh/config` file (see [here](https://superuser.com/questions/247564/is-there-a-way-for-one-ssh-config-file-to-include-another-one)).

```sh
stow ssh --target ~/.ssh/
```
