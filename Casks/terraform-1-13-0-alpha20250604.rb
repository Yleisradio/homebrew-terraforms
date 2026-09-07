cask "terraform-1-13-0-alpha20250604" do
  arch arm: "arm64", intel: "amd64"

  version "1.13.0-alpha20250604"
  sha256 arm:   "1eaba720713e4ce8d416aaa5911243983e55f5e3e494439b5f4fa246779d4b1b",
         intel: "9b50e489b8cf9e89fe4781d5d2238d95a64df5ca94868d52b7d6852731891bfd"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
