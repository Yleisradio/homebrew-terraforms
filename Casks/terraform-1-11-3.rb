cask "terraform-1-11-3" do
  arch arm: "arm64", intel: "amd64"

  version "1.11.3"
  sha256 arm:   "c0c64fa7b859f505fdcefdab89317e98b268f68d401da87df0b0021e827cf197",
         intel: "bcdbb6f35c536da333d410cd0d0c1f5d543c4f40d46c8f96e419190fe3e9d941"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
