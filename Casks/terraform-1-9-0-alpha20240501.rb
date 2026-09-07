cask "terraform-1-9-0-alpha20240501" do
  arch arm: "arm64", intel: "amd64"

  version "1.9.0-alpha20240501"
  sha256 arm:   "18af1ebc1b0978e1ae5ddff575e8b49667b2ca0b3c62bd7971dbd398f50835e6",
         intel: "31d3fa9b5b3873c4de11e9df5f1f84aad396dfc2035b7a1bfc91ab6de7cc51f3"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
