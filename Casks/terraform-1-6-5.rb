cask "terraform-1-6-5" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.6.5"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "6595f56181b073d564a5f94510d4a40dab39cc6543e6a2c9825f785a48ddaf51",
    arm: "5c66fdc6adb6e7aa383b0979b1228c7c7b8d0b7d60989a13993ee8043b756883"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
