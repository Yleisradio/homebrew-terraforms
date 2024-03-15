cask "terraform-0-12-12" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.12.12"

  arch = "amd64"
  sha256 "abc3a0b5184259be2b9f744baae0d3709fae0e38112e36d35ff9debb43375e97"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
