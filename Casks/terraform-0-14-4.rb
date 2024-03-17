cask "terraform-0-14-4" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.14.4"

  arch = "amd64"
  sha256 "9efab671f69dd277ab961aff36c17bc2c33a927246b51c55df3816bfd3184966"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
