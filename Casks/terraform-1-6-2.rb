cask "terraform-1-6-2" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.2"
  sha256 arm:   "87345e9f2932c29c8d00c5ca9e0361fada18accc2573fd66883b3adb40949be8",
         intel: "361ffd98f0cdee631cb1475688471c5fb8f41bd6a4d8d300f29df384c82d6316"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
