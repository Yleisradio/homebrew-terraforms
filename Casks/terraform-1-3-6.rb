cask "terraform-1-3-6" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.3.6"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "13881fe0100238577394243a90c0631783aad21b77a9a7ee830404f86c0d37bb",
    arm: "dbff0aeeaeee877c254f5414bef5c9d186e159aa0019223aac678abad9442c53"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
