cask "terraform-1-7-0-beta2" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.7.0-beta2"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "7c09244a80dba64d5f62c75b6bb006be9e8b71f63a9c729e69cf8ae2b5ed64c2",
    arm: "4975da1056a0f5f41499b7f080bf8ceed5939a8be8d373a74fdf96e7c06e0d92"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
