cask "terraform-0-11-3" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.11.3"

  arch = "amd64"
  sha256 "183078bf230e517e6f41e47d6e7d3b61093c6bb5a2b85958c01a4cf3949b7c14"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
