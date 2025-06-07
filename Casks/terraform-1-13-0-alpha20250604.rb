cask "terraform-1-13-0-alpha20250604" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.13.0-alpha20250604"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "9b50e489b8cf9e89fe4781d5d2238d95a64df5ca94868d52b7d6852731891bfd",
    arm: "1eaba720713e4ce8d416aaa5911243983e55f5e3e494439b5f4fa246779d4b1b"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
