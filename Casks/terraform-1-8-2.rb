cask "terraform-1-8-2" do
  arch arm: "arm64", intel: "amd64"

  version "1.8.2"
  sha256 arm:   "f871f4c91eafec6e6e88253dc3cc0b6a21d63fa56fee5ee1629f3ce68a605873",
         intel: "a71ada335aba64ac1851ffbb2cf8f727a06013d02474dd70c4571f585b1fe522"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
