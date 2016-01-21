# Homebrew Casks for Terraform versions

This repository includes Homebrew Casks to install multiple Terraform versions (since 0.6.6) at the same time.

The binaries are not symlinked to `/usr/local/bin`, so you need to adjust `PATH` to use an installed version.

## Usage

```sh
brew tap Yleisradio/terraforms
brew cask install terraform-0.6.9
```
