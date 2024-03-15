cask "terraform-0-6-9" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.6.9"

  arch = "amd64"
  sha256 "9cf892c073a9fce0e9f136162f82c5b2d373c32cc2c5bd5c5eb16631262fad89"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
