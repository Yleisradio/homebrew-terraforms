cask "terraform-0-7-1" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.7.1"

  arch = "amd64"
  sha256 "ab5e9ffe690f52ff13b8f095937119d67d3f0a07744be851657555236245dd98"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
