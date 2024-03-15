cask "terraform-1-7-1" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.7.1"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "db05d272f5070eacab70fc14a091f5a9e6c734423794901d79ffd3c612933235",
    arm: "d4ee3a591d022fda26e1eb153a25e38ee4f0311720719c329ed38cf2ae8c14e5"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
