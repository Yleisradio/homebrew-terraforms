cask "terraform-1-9-0-alpha20240404" do
  arch arm: "arm64", intel: "amd64"

  version "1.9.0-alpha20240404"
  sha256 arm:   "de984feb85d82c1111a88af2f58cc4cc2ae2077d25a660bf4cf77cce93ed07ad",
         intel: "484dc7f038e89aeeee8bfc6a1079ef9f0de0386219ed8d2d4cbca24475767438"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
