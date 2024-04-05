cask "terraform-1-9-0-alpha20240404" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.9.0-alpha20240404"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "484dc7f038e89aeeee8bfc6a1079ef9f0de0386219ed8d2d4cbca24475767438",
    arm: "de984feb85d82c1111a88af2f58cc4cc2ae2077d25a660bf4cf77cce93ed07ad"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
