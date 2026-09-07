cask "terraform-1-3-0-alpha20220706" do
  arch arm: "arm64", intel: "amd64"

  version "1.3.0-alpha20220706"
  sha256 arm:   "b7eb881cf519383ac220b65207f90349bbff6064a037905a02855f5d8fcf7cec",
         intel: "22260dc6eb0cd8a18f690b80299bf07dc5944876bbf6ec552837c4242303cb62"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
