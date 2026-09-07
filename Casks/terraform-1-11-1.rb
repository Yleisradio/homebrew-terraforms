cask "terraform-1-11-1" do
  arch arm: "arm64", intel: "amd64"

  version "1.11.1"
  sha256 arm:   "94edba167cb2f6428fe849688af67b2a91696be4dc1152b6ac94487d826ec8e6",
         intel: "5a07ae8d246d3cca5fb32ec988cc78824ddc03a166ba175e5c7d002f42f8ffa7"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
