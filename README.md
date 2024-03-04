# Luni's dotfiles

These are my dotfiles, feel free to use them as you like.
The files are handled by `GNU/Stow`. You can install it with this command:

    sudo apt install stow

If you want to install the packages' dotfiles into your `$HOME`, you must run
the `install` script in this way:

    python install [package 1] [package 2] .... [package n]

If no argument is specified, the script will install all packages.

Only the `scripts` directory is not installed.
It contains a series of scripts that are not handled by `GNU/Stow`.

If you want to re-install configuration files run:

```console
./install-configs -R
```
