cask "terraform-0-15-2" do
  version "0.15.2"
  sha256 "74b7317085f86b34c7dc1a1a97d8f3f1b418a56d1b3bf51c869c432851fa1138"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
