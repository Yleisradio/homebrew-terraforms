cask "terraform-1-0-3" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.0.3"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "6e86dfff2f90ddc1232b38487613d5f7eab69f227d76c4337921517aaaa11c4f",
    arm: "a16f8851e11fcc5b922c529169918b05d39ffd85557e6bbbcd7843cf07e47910"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
