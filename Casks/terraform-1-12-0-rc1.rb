cask "terraform-1-12-0-rc1" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.12.0-rc1"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "0788faf006f6932b7d4228e0d8303049aa510037a2d1e70b427d6b32b7c53a89",
    arm: "3495d91e03498a05aa8ee8d52a053e921daabd2ccfc6a660cd709e60ef8e89a9"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
