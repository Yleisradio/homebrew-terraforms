cask "terraform-1-16-0-alpha20260715" do
  arch arm: "arm64", intel: "amd64"

  version "1.16.0-alpha20260715"
  sha256 arm:   "8d6d6fbb9fa6e39f86ff593d31d4af5cea9d4b7d1008e7052862cd63ea1d95b5",
         intel: "1849b890d873c31b0234f3436f2fcd9ae5c25a0255dc7bbd073aeec4177fb4af"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
