cask "terraform-0-12-0-rc1" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.12.0-rc1"

  arch = "amd64"
  sha256 "cb10093fe8b14771047314b547c7710e363199c40e129bb7e3b4886e3f3b3ca6"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
