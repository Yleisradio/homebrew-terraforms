cask "terraform-1-6-1" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.6.1"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "48951cc7f15bc028a867642425db720c18f13491007ee218dcc54b5ea0519d17",
    arm: "85ad9903a48c1b997540d1b9fdd47d7b29cb6be740e7c34f6f8afc7581f4ac8e"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
