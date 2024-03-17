cask "terraform-0-12-30" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.12.30"

  arch = "amd64"
  sha256 "7d1a1d12bedce7b2c474495db0d777389a4e9b02181ad4db9bda3511e586f8e0"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
