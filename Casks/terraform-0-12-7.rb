cask "terraform-0-12-7" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.12.7"

  arch = "amd64"
  sha256 "17471e64e85e91c9309e9e17df7b8740664b2b58b6f1d6088dfc400a995b0413"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
