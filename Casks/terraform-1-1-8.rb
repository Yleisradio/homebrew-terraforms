cask "terraform-1-1-8" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.1.8"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "48f1f1e04d0aa8f5f1a661de95e3c2b8fd8ab16b3d44015372aff7693d36c2cf",
    arm: "943e1948c4eae82cf8b490bb274939fe666252bbc146f098e7da65b23416264a"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
