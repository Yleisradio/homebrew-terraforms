cask "terraform-1-11-1" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.11.1"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "5a07ae8d246d3cca5fb32ec988cc78824ddc03a166ba175e5c7d002f42f8ffa7",
    arm: "94edba167cb2f6428fe849688af67b2a91696be4dc1152b6ac94487d826ec8e6"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
