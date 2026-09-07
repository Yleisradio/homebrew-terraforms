cask "terraform-1-10-0-alpha20241023" do
  arch arm: "arm64", intel: "amd64"

  version "1.10.0-alpha20241023"
  sha256 arm:   "a07b1a120439d2f93f079d95a6570ece50bb3fef729a238857c654dcf2fb27b6",
         intel: "620b9be1be9e207d03a1df89fe90663665651d431b643ba73bb6a2fb542821dc"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
