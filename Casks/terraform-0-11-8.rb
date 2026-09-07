cask "terraform-0-11-8" do
  version "0.11.8"
  sha256 "98c168b06e8b4058c66e044e3744d49956ce7bc3664dc1679a33f8fffc84564d"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
