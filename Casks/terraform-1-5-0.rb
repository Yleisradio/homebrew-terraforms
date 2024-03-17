cask "terraform-1-5-0" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.5.0"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "dd64d8a2a75519b933b4f1d76417675ea66bdb45c2a2672cf511825091eba789",
    arm: "0765371227ab09e1bb64d606fcfe3d157a2992ac3b82ffabfb9976db53bd791e"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
