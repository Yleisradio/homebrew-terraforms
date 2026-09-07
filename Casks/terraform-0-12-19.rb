cask "terraform-0-12-19" do
  version "0.12.19"
  sha256 "36a013a207a8fd0f23d07ee2cf8fb1ac0e547fccf94215e9d2b5d77862e7f758"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
