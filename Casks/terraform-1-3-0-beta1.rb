cask "terraform-1-3-0-beta1" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.3.0-beta1"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "3d07988b32e8a4d744765d0c78ebc64e43f737621d19cf05ef898f8537a12ae4",
    arm: "01efcf84b1d98c20e3675b76221f67b4f0d789f450ded6893bf09092640ebfd0"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
