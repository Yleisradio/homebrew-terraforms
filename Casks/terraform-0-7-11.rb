cask "terraform-0-7-11" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.7.11"

  arch = "amd64"
  sha256 "69c8d2b07f04e9bf0beb4a333dd189d8616d22fe46692bdb5aef10493ac5e5c6"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
