cask "terraform-1-3-7" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.3.7"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "eeae48adcd55212b34148ed203dd5843e9b2a84a852a9877f3386fadb0514980",
    arm: "01d553db5f7b4cf0729b725e4402643efde5884b1dabf5eb80af328ce5e447cf"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
