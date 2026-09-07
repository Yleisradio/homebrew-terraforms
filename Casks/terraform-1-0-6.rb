cask "terraform-1-0-6" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.6"
  sha256 arm:   "613020f90a6a5d0b98ebeb4e7cdc4b392aa06ce738fbb700159a465cd27dcbfa",
         intel: "5ac4f41d5e28f31817927f2c5766c5d9b98b68d7b342e25b22d053f9ecd5a9f1"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
