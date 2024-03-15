cask "terraform-0-11-1" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.11.1"

  arch = "amd64"
  sha256 "f5e04d3886e9a427490d1aa857a61b5a87d08dc26fb8637e3eaa72b30562c330"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
