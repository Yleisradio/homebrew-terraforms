cask "terraform-1-16-0" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.16.0"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "2b2b7d37f6893474fa3622fa96053e54949c4ddfca4aba105380718157936465",
    arm: "5dd692c6cc76b596029ff3c2b2b4c3a1710f92d3de6d2da3f66bd2e0c2daa92a"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
