# Homebrew Casks for Terraform versions

This repository includes Homebrew Casks to install multiple Terraform versions (since 0.6.6) at the same time, and a `chtf` helper to specify which one to use.

## Usage

Tap this repository:

    brew tap Yleisradio/terraforms

Install the `chtf` helper:

    brew install chtf

Add the following to the ~/.bashrc or ~/.zshrc file:

    # Source chtf
    if [[ -f /usr/local/share/chtf/chtf.sh ]]; then
        source "/usr/local/share/chtf/chtf.sh"
    fi

Then select the wanted Terraform version to use with `chtf`.

    chtf 0.6.9

You can also just install a specific Terraform version (but you'll need to use `chtf` or adjust `PATH` yourself to use it):

    brew cask install terraform-0.6.9

## Credits

Idea and implementation heavily affected by [chruby](https://github.com/postmodern/chruby).
