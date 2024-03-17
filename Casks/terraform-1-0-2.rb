cask "terraform-1-0-2" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.0.2"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "f323afd5804bf6dbe639585bea5edc68f429011fc8a44519f3f1654ab88e9a5f",
    arm: "f653da49e48dfd677403ba6babede93918ab4196280c0ea4d64a442d948723b6"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
