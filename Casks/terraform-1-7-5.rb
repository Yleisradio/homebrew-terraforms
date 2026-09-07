cask "terraform-1-7-5" do
  arch arm: "arm64", intel: "amd64"

  version "1.7.5"
  sha256 arm:   "99c4d4feafb0183af2f7fbe07beeea6f83e5f5a29ae29fee3168b6810e37ff98",
         intel: "0eaf64e28f82e2defd06f7a6f3187d8cea03d5d9fcd2af54f549a6c32d6833f7"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
