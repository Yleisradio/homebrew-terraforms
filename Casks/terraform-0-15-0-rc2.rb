cask "terraform-0-15-0-rc2" do
  version "0.15.0-rc2"
  sha256 "73347bb7965b6681b7dc10f45d0eeec28b5916cbadb62ff97e9a885956ab9201"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
