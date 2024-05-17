cask "terraform-1-9-0-alpha20240516" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.9.0-alpha20240516"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "d14821b58a6d7e04b57a0be8d29d4b8625c5ae9a913c38d4982d86a2d4817200",
    arm: "cfb7be228de5869dc88f59cc227d162862f2078e47679764392e4151c1b22e70"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
