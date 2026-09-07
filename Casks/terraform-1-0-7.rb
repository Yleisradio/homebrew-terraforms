cask "terraform-1-0-7" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.7"
  sha256 arm:   "d9062959f28ba0f934bfe2b6e0b021e0c01a48fa065102554ca103b8274e8e0c",
         intel: "23b85d914465882b027d3819cc05cd114a1aaf39b550de742e81a99daa998183"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
