cask "terraform-1-2-0-alpha20220413" do
  arch arm: "arm64", intel: "amd64"

  version "1.2.0-alpha20220413"
  sha256 arm:   "1d4dbcc179c20d44a8fa7c0fec2f93078ccce94ad642bb1204041af2a0e53c76",
         intel: "70fd32df5851a9a5d132119e0328708a4643109402813301fc2254fb6a7dd210"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
