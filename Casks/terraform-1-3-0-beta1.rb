cask "terraform-1-3-0-beta1" do
  arch arm: "arm64", intel: "amd64"

  version "1.3.0-beta1"
  sha256 arm:   "01efcf84b1d98c20e3675b76221f67b4f0d789f450ded6893bf09092640ebfd0",
         intel: "3d07988b32e8a4d744765d0c78ebc64e43f737621d19cf05ef898f8537a12ae4"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
