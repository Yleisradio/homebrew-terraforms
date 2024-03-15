cask "terraform-1-2-8" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.2.8"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "efd3e21a9bb1cfa68303f8d119ea8970dbb616f5f99caa0fe21d796e0cd70252",
    arm: "2c83bfea9e1c202c449e91bee06a804afb45cb8ba64a73da48fb0f61df51b327"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
