cask "terraform-0-12-12" do
  version "0.12.12"
  sha256 "abc3a0b5184259be2b9f744baae0d3709fae0e38112e36d35ff9debb43375e97"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
