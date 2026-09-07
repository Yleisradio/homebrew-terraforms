cask "terraform-1-15-0-beta1" do
  arch arm: "arm64", intel: "amd64"

  version "1.15.0-beta1"
  sha256 arm:   "c37a0850c2a0abacca41a276b6614acee111114a19ce58e573ad670ce15f69b0",
         intel: "94cf1da9e147d914a0bd47196bb5fb01dbd2c30c547fdd0a0589ffa2c45c1af9"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
