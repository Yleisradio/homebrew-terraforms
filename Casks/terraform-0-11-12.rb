cask "terraform-0-11-12" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.11.12"

  arch = "amd64"
  sha256 "316fa873b26463f3e015db11dba00eab1839338f930f1352dbab2d0bcd0828a5"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
