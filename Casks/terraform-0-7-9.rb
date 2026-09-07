cask "terraform-0-7-9" do
  version "0.7.9"
  sha256 "960e0e79c9dcaa51fa349f923e62f46fd4b49a91dcb06677ab096918f6074e2e"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
