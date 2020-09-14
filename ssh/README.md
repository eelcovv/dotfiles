# ssh

Configuration for my ssh hosts.

**Before** creating the symlinks with GNU stow:

1. Copy all SSH keys to `~/.ssh/keys/` (obviously SSH keys are not kept in this repo).
2. Copy SSH config files not kept in this repo (e.g. `~/.ssh/conf.d/vps.conf`).
3. Make sure that keys and config files have the correct read permissions:
    - `chmod 600 ~/.ssh/keys/*`
    - `chmod 600 ~/.ssh/conf.d/*`
    - `chmod 600 ~/.ssh/config`

To create the symlinks in the home directory, run the following command from **this** directory:

```sh
stow . --target ~
```
