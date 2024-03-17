cask "terraform-0-7-8" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.7.8"

  arch = "amd64"
  sha256 "9daaec788ee0540d7b3a92f2dcf86656f3c567e2c267c64c03aa712901796470"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
