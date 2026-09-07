cask "terraform-1-16-0-rc1" do
  arch arm: "arm64", intel: "amd64"

  version "1.16.0-rc1"
  sha256 arm:   "0005b78facac6ae24f0a4d95578434bd2adbad58d929cd6a8dfbb65ca1069f8d",
         intel: "c6144a741b3d3329c5161e05b4e713e2c531b99be87663a9b836f0b192b5e6bd"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
