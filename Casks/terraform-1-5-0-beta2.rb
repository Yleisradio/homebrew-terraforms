cask "terraform-1-5-0-beta2" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.5.0-beta2"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "d34cddf4636872d9e8fd840b5e421bec42552323165ef0589eeb8dc4bd442c48",
    arm: "b7be82184bbe91d2f042151f7f097522cfb3c990cb18982caa1591305f619a0b"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
