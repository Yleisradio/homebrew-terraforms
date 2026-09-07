cask "terraform-1-1-0-alpha20210908" do
  arch arm: "arm64", intel: "amd64"

  version "1.1.0-alpha20210908"
  sha256 arm:   "5830f3197ccd3485fc59d808bfc90e852b4f1246e1b39dd0c5250e118943ecc5",
         intel: "e23c5f21b4d9cda9f2965a4cc38109e26e0decb77b11e378c4e526a35ab66ff6"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
