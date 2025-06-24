cask "terraform-1-13-0-alpha20250623" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.13.0-alpha20250623"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "2cfcc97acf91d0e6df39ede46a18a600eb280eb1c28abaeafb92221758ba1b78",
    arm: "d9b7b606f62e97861a6c77fa7816291d8960b0c1e3a2a6c9d2b9614409b3e371"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
