cask "terraform-1-12-0-alpha20250312" do
  arch arm: "arm64", intel: "amd64"

  version "1.12.0-alpha20250312"
  sha256 arm:   "b8b0de20f5d82ccd54c0dd29bb56aa8ce88ec01f3a2ee22de0c6c8166c487625",
         intel: "cc233e9d034757825129f0cf80b04c55dfa00378265674bc7ba831964eb5e798"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
