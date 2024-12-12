cask "terraform-1-11-0-alpha20241211" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.11.0-alpha20241211"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "18520d984e90d5b03ea8ee2ac614d71438713dbcb0a5dd6ee87beb858d293b2a",
    arm: "ccec65b2447707bcda3df31e46136eaf3e66244af4aafac371af1733250d237c"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
