cask "terraform-0-5-1" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.5.1"

  arch = "amd64"
  sha256 "5915d7668b07ea3770f1bc8126764f90723eade0245e0634af3b051ae2ceb7e5"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
