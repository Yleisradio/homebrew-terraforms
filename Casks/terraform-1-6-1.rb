cask "terraform-1-6-1" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.1"
  sha256 arm:   "85ad9903a48c1b997540d1b9fdd47d7b29cb6be740e7c34f6f8afc7581f4ac8e",
         intel: "48951cc7f15bc028a867642425db720c18f13491007ee218dcc54b5ea0519d17"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
