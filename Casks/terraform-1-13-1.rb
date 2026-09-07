cask "terraform-1-13-1" do
  arch arm: "arm64", intel: "amd64"

  version "1.13.1"
  sha256 arm:   "2e067a85882eed25fd966abfb763ae32075940e7b505eb3cd7e592360615d67d",
         intel: "ababbfdb3bab9ac7ca10cb1e71dd5f7fb1ac10b5faf6d842e84524932d9c5ca4"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
