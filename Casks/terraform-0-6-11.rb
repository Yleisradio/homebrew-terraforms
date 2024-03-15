cask "terraform-0-6-11" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.6.11"

  arch = "amd64"
  sha256 "9802b1d56576bea86e34fd3800e100eb043ab6de5a5fa40f7f05a0a44f364dd2"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
