cask "terraform-1-1-0" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.1.0"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "6e0ba9afb8795a544e70dc0459f0095fea7df15e38f5d88a7dd3f620d50f8bfe",
    arm: "7955e173c7eadb87123fc0633c3ee67d5ba3b7d6c7f485fe803efed9f99dce54"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
