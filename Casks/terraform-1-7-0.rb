cask "terraform-1-7-0" do
  arch arm: "arm64", intel: "amd64"

  version "1.7.0"
  sha256 arm:   "7c23ffbeba15c38ce547e62ba4ffbb2c3620cf5b38bf9fa8037cfa81544d1150",
         intel: "621a2ef8d0ca4e5bb613632983b6b2cd53d542978117df779ac363422ce6802d"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
