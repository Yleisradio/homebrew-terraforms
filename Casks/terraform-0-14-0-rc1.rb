cask "terraform-0-14-0-rc1" do
  version "0.14.0-rc1"
  sha256 "4fff2d849d96c6278188dfe10d371863253b8f789c98d17c8cffc4eda738810e"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
