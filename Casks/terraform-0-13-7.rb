cask "terraform-0-13-7" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.13.7"

  arch = "amd64"
  sha256 "60f3561eb11fa6c61321d6c8b698023eb7b74dc1a49210bd5f5acb03f453db9b"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
