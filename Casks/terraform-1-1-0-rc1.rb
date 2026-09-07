cask "terraform-1-1-0-rc1" do
  arch arm: "arm64", intel: "amd64"

  version "1.1.0-rc1"
  sha256 arm:   "3b005902d98f38aab052b233f15dab0048efba6b3a635ee255ce801df5e8aa97",
         intel: "a6d28534ff87971f236173a231065ccbbd3565b7fe2ca4f750873c51db8a4fb0"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
