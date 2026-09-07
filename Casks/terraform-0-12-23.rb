cask "terraform-0-12-23" do
  version "0.12.23"
  sha256 "12293764366ade518e2022c6ad981712e029e24bdbf3e1d5822de82dec1a6dbd"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
