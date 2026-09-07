cask "terraform-0-15-4" do
  version "0.15.4"
  sha256 "9092c017257ead94223418dac7165541228e773463b476e0803848be4f3169a4"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
