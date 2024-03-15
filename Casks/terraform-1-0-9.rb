cask "terraform-1-0-9" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.0.9"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "be122ff7fb925643c5ebf4e5704b18426e18d3ca49ab59ae33d208c908cb6d5a",
    arm: "89b2b4fd1a0c57fabc08ad3180ad148b1f7c1c0492ed865408f75f12e11a083b"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
