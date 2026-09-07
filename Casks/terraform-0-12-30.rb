cask "terraform-0-12-30" do
  version "0.12.30"
  sha256 "7d1a1d12bedce7b2c474495db0d777389a4e9b02181ad4db9bda3511e586f8e0"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
