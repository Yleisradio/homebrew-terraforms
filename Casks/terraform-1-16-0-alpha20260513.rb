cask "terraform-1-16-0-alpha20260513" do
  arch arm: "arm64", intel: "amd64"

  version "1.16.0-alpha20260513"
  sha256 arm:   "6bb77df50daabcc06fa2ee10a0bb219645718bb93571449da3c2b790aaab7510",
         intel: "e126c4b5c0340fcb41cf36ca4311aaa2d6b87046e75f8373a63869d2e9fa4bfa"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
