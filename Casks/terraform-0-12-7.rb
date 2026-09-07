cask "terraform-0-12-7" do
  version "0.12.7"
  sha256 "17471e64e85e91c9309e9e17df7b8740664b2b58b6f1d6088dfc400a995b0413"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
