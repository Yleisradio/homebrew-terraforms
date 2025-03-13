cask "terraform-1-12-0-alpha20250312" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.12.0-alpha20250312"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "cc233e9d034757825129f0cf80b04c55dfa00378265674bc7ba831964eb5e798",
    arm: "b8b0de20f5d82ccd54c0dd29bb56aa8ce88ec01f3a2ee22de0c6c8166c487625"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
