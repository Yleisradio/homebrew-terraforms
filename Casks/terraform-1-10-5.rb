cask "terraform-1-10-5" do
  arch arm: "arm64", intel: "amd64"

  version "1.10.5"
  sha256 arm:   "51910553dae21dab7f5f55912129602fd902e68a6b6d84b326a556a3e140b98b",
         intel: "4164db242076c7e99ac6aec67bc42b366925b97267e3883edaca4e4e408b082e"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
