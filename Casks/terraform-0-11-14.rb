cask "terraform-0-11-14" do
  version "0.11.14"
  sha256 "829bdba148afbd61eab4aafbc6087838f0333d8876624fe2ebc023920cfc2ad5"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
