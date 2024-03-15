cask "terraform-1-6-0-rc1" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.6.0-rc1"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "e5b33535abd89965cffedf07aa74a938228f10e4521f773cc3263ccb941df3ed",
    arm: "a0cc13513b61cf7a0034dc25596770fa9d69c9b79e488ac8f2e659b46b5f6ff3"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
