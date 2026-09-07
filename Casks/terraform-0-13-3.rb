cask "terraform-0-13-3" do
  version "0.13.3"
  sha256 "4a613dc18ff8cfac525a59cc0e78216fa0a9ecd63e6ac45603561ceb72f6d772"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
