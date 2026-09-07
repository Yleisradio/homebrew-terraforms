cask "terraform-1-5-3" do
  arch arm: "arm64", intel: "amd64"

  version "1.5.3"
  sha256 arm:   "444e5565806041d9899a9ba50549840eaa2a2cb7d5b59bb08c5874f92bc4963d",
         intel: "a5ecd11c8ed9b6c5182a84bce9c3c9c092f86916cf117bca855991853502af94"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
