cask "terraform-1-13-1" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.13.1"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "ababbfdb3bab9ac7ca10cb1e71dd5f7fb1ac10b5faf6d842e84524932d9c5ca4",
    arm: "2e067a85882eed25fd966abfb763ae32075940e7b505eb3cd7e592360615d67d"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
