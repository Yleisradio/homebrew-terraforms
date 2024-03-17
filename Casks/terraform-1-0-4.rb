cask "terraform-1-0-4" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.0.4"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "0d2083b1a812572eef068dbfd60ffbfa10f843434bec5f7e82c5f7a778761fa1",
    arm: "8942347acdf0e5499366c6ee4fc1da7a4b4c24f9d80113a12e8b72619786b7eb"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
