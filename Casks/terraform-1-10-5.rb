cask "terraform-1-10-5" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.10.5"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "4164db242076c7e99ac6aec67bc42b366925b97267e3883edaca4e4e408b082e",
    arm: "51910553dae21dab7f5f55912129602fd902e68a6b6d84b326a556a3e140b98b"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
