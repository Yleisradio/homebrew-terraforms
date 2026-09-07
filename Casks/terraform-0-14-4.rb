cask "terraform-0-14-4" do
  version "0.14.4"
  sha256 "9efab671f69dd277ab961aff36c17bc2c33a927246b51c55df3816bfd3184966"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
