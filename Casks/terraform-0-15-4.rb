cask "terraform-0-15-4" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.15.4"

  arch = "amd64"
  sha256 "9092c017257ead94223418dac7165541228e773463b476e0803848be4f3169a4"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
