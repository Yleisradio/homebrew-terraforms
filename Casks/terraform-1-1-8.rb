cask "terraform-1-1-8" do
  arch arm: "arm64", intel: "amd64"

  version "1.1.8"
  sha256 arm:   "943e1948c4eae82cf8b490bb274939fe666252bbc146f098e7da65b23416264a",
         intel: "48f1f1e04d0aa8f5f1a661de95e3c2b8fd8ab16b3d44015372aff7693d36c2cf"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
