cask "terraform-1-9-0-rc2" do
  arch arm: "arm64", intel: "amd64"

  version "1.9.0-rc2"
  sha256 arm:   "a3229bf6ee77d7de071c917a9df6922e14bb4abb81153c2453134d3d126d6dde",
         intel: "755a21badc1309e18436d980444dc36df3c6b1db4a24e5d5e4588b27803d18af"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
