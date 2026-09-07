cask "terraform-1-7-4" do
  arch arm: "arm64", intel: "amd64"

  version "1.7.4"
  sha256 arm:   "3f25268a5d7677cc89d39a505362979acfb02f19ddb965d7ec0b33a6d9e64075",
         intel: "fcf35c8b1d3f46fb84f688312ef5f829081d2d56c10444b9f6e290e21e68871c"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
