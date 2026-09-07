cask "terraform-1-4-5" do
  arch arm: "arm64", intel: "amd64"

  version "1.4.5"
  sha256 arm:   "7104d9d13632aa61b494a349c589048d21bd550e579404c3a41c4932e4d6aa97",
         intel: "808e54d826737e9a0ca79bbe29330e50d3622bbeeb26066c63b371a291731711"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
