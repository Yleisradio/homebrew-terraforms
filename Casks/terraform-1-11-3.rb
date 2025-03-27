cask "terraform-1-11-3" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.11.3"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "bcdbb6f35c536da333d410cd0d0c1f5d543c4f40d46c8f96e419190fe3e9d941",
    arm: "c0c64fa7b859f505fdcefdab89317e98b268f68d401da87df0b0021e827cf197"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
