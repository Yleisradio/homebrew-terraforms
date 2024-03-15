cask "terraform-1-6-6" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.6.6"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "33376343c7e0279b674c1c8b8a31dc3174ac09dd796d32651cc5e3b98f220436",
    arm: "01e608fc04cf54869db687a212d60f3dc3d5c828298514857f9e29f8ac1354a9"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
