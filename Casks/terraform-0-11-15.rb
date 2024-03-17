cask "terraform-0-11-15" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.11.15"

  arch = "amd64"
  sha256 "9c3214dcaa277c3773d52d514a76959c82896a1661061b7e5f9523c38add10b7"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
