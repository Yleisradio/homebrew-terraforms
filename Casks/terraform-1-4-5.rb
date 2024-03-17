cask "terraform-1-4-5" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.4.5"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "808e54d826737e9a0ca79bbe29330e50d3622bbeeb26066c63b371a291731711",
    arm: "7104d9d13632aa61b494a349c589048d21bd550e579404c3a41c4932e4d6aa97"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
