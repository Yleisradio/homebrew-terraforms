cask "terraform-1-8-5" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.8.5"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "051c702e156a4d1a1c628783cf2ca0e1db8cca7b4c0f1686ea623558ed5560f9",
    arm: "627c5005ab4a2bee36316f4967a41f16d55f79ea737f78b6bb34325c728c73e1"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
