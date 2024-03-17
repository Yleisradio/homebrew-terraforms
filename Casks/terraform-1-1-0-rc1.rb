cask "terraform-1-1-0-rc1" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.1.0-rc1"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "a6d28534ff87971f236173a231065ccbbd3565b7fe2ca4f750873c51db8a4fb0",
    arm: "3b005902d98f38aab052b233f15dab0048efba6b3a635ee255ce801df5e8aa97"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
