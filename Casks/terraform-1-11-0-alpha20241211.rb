cask "terraform-1-11-0-alpha20241211" do
  arch arm: "arm64", intel: "amd64"

  version "1.11.0-alpha20241211"
  sha256 arm:   "ccec65b2447707bcda3df31e46136eaf3e66244af4aafac371af1733250d237c",
         intel: "18520d984e90d5b03ea8ee2ac614d71438713dbcb0a5dd6ee87beb858d293b2a"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
