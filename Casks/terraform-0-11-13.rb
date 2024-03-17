cask "terraform-0-11-13" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.11.13"

  arch = "amd64"
  sha256 "e9988443da39e5d81a5f7f1b6a5d97b25e2a1151d9be76cdc2e380df97e57856"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
