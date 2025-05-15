cask "terraform-1-12-0" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.12.0"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "7516b58d79f9c261498e54f26f5e6684da379d0b44956121f832b9e3302baf24",
    arm: "4e6cab902bd43d218ba3e921a3d80d4c9e5056d9d5badbac7190741afc095506"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
