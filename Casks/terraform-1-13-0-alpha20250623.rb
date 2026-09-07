cask "terraform-1-13-0-alpha20250623" do
  arch arm: "arm64", intel: "amd64"

  version "1.13.0-alpha20250623"
  sha256 arm:   "d9b7b606f62e97861a6c77fa7816291d8960b0c1e3a2a6c9d2b9614409b3e371",
         intel: "2cfcc97acf91d0e6df39ede46a18a600eb280eb1c28abaeafb92221758ba1b78"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
