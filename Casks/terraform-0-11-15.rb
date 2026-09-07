cask "terraform-0-11-15" do
  version "0.11.15"
  sha256 "9c3214dcaa277c3773d52d514a76959c82896a1661061b7e5f9523c38add10b7"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
