cask "terraform-1-14-0-beta3" do
  arch arm: "arm64", intel: "amd64"

  version "1.14.0-beta3"
  sha256 arm:   "6136b3e63767fc0a869f64fc337da62e3cda6af4bd70741b927b3a3bda4e9045",
         intel: "2dc686a3298212ba8d877e5de16c591d46d22ed76d24f9360d548779fd25d07c"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
