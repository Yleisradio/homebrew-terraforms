cask "terraform-1-1-0-alpha20211029" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.1.0-alpha20211029"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "de70d87ea634290ac03ee20c5901eb5cef68d42d1c5f74a001863f7479805646",
    arm: "3631eec8ec544e56092f29e0e8c0466f86a94e92d5708823bcf36a189eaa0b74"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
