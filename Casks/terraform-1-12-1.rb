cask "terraform-1-12-1" do
  arch arm: "arm64", intel: "amd64"

  version "1.12.1"
  sha256 arm:   "30dd56df622fc4d477f24abe7c19856c4c1c22284e20db6d7fa4c53bcfacfb20",
         intel: "bb5bc5c846a4b41b414a6598775a27e3fbb0405ef9b36a61789df5639a9860f5"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
