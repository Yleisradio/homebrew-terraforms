cask "terraform-1-8-4" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.8.4"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "5968872b07677829002d0a7ad34cf0c4cd02893a1c131e4ca30236442ceec445",
    arm: "6a54d2862c8244febe6077a1fc6e9e6cc4e65eee8169049e77ce08df233cf49a"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
