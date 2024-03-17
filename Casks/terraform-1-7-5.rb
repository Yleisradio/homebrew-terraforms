cask "terraform-1-7-5" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.7.5"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "0eaf64e28f82e2defd06f7a6f3187d8cea03d5d9fcd2af54f549a6c32d6833f7",
    arm: "99c4d4feafb0183af2f7fbe07beeea6f83e5f5a29ae29fee3168b6810e37ff98"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
