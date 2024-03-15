cask "terraform-1-4-1" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.4.1"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "96466364a7e66e3d456ecb6c85a63c83e124c004f8835fb8ea9b7bbb7542a9d0",
    arm: "61f76e130b97c8a9017d8aaff15d252af29117e35ea1a0fc30bcaab7ceafce73"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
