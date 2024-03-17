cask "terraform-1-7-4" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.7.4"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "fcf35c8b1d3f46fb84f688312ef5f829081d2d56c10444b9f6e290e21e68871c",
    arm: "3f25268a5d7677cc89d39a505362979acfb02f19ddb965d7ec0b33a6d9e64075"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
