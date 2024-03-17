cask "terraform-1-2-0-alpha-20220328" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.2.0-alpha-20220328"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "6d7252fd9a2b43b27a217d0ff7bf38b1308b0cd6104918a308655332a789f8b9",
    arm: "5645246a227c922b2f82eb79ca23be8d2db901f1bcb5527373203c56637d4741"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
