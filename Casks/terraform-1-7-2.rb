cask "terraform-1-7-2" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.7.2"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "dad2fd54b3dda89b39978dcd27c8c62e13010efdc0507a04b6ad57257b57085e",
    arm: "d8c7b8b1aa7f0b38a2e437d9c9e4e632b2b258e3bf48bb6de4626f3b0afea5e4"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
