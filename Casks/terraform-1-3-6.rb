cask "terraform-1-3-6" do
  arch arm: "arm64", intel: "amd64"

  version "1.3.6"
  sha256 arm:   "dbff0aeeaeee877c254f5414bef5c9d186e159aa0019223aac678abad9442c53",
         intel: "13881fe0100238577394243a90c0631783aad21b77a9a7ee830404f86c0d37bb"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
