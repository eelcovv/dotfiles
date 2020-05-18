# The .profile script contains commands that are executed automatically every
# time the user logs in to the system.
# Use .profile rather than .bash_profile.
# The .profile file is NOT read by bash if either .bash_profile or .bash_login
# exists.
#
# See also:
# https://www.stefaanlippens.net/my_bashrc_aliases_profile_and_other_stuff/

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

if [ -n "$BASH_VERSION" ]; then
    if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
    fi
fi

# Append user's local binaries (if any) to PATH
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# Append user's local binaries (if any) to PATH
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

echo "I AM PROFILE"
