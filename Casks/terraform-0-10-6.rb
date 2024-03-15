cask "terraform-0-10-6" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.10.6"

  arch = "amd64"
  sha256 "a37f190cfcac21fa2343ec7e3112137d27fb9286c9f5c128547c6221502442c9"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
