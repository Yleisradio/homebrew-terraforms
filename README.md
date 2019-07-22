# chtf - Terraform version switcher

This repository includes Homebrew Casks to install multiple Terraform versions (since 0.6.6) at the same time, and a `chtf` helper to specify which one to use. `chtf` also installs the specified version automatically if needed.

## Usage

Tap this repository:

    brew tap Yleisradio/terraforms

Install the `chtf` helper:

    brew install chtf

Add the following to the ~/.bashrc or ~/.zshrc file:

```bash
# Source chtf
if [[ -f /usr/local/share/chtf/chtf.sh ]]; then
    source "/usr/local/share/chtf/chtf.sh"
fi
```

If you are using fish add the following into ~/.config/fish/config.fish:

```fish
# Source chtf
if test -f /usr/local/share/chtf/chtf.fish
    source /usr/local/share/chtf/chtf.fish
end
```

Then select the wanted Terraform version to use with `chtf`.

    chtf 0.11.3

If you wold like to default to a particular version so terraform when opening a new terminal you can add
```
chtf 0.11.14
```
to your .bashrc or .bash_profile after the above sourcing statements.  This is handy for not having to pick a version every time you are in a
terraform repository and letting it default.

You can also just install a specific Terraform version (but you'll need to use `chtf` or adjust `PATH` yourself to use it):

    brew cask install terraform-0.6.9

## Credits

Idea and implementation heavily affected by [chruby](https://github.com/postmodern/chruby).
