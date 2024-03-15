cask "terraform-1-6-2" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.6.2"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "361ffd98f0cdee631cb1475688471c5fb8f41bd6a4d8d300f29df384c82d6316",
    arm: "87345e9f2932c29c8d00c5ca9e0361fada18accc2573fd66883b3adb40949be8"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
