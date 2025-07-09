cask "terraform-1-13-0-alpha20250708" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.13.0-alpha20250708"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "f38d7f75c94c251b1030d64624e2db9509f96e492d56a78e5c7f0ded43caf2c4",
    arm: "4eb9705bd0443a5c6afbe600ad5c70410607eadb306ae67c06d635bedd08d413"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
