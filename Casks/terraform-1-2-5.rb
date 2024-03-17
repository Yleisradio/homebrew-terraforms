cask "terraform-1-2-5" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.2.5"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "2520fde736b43332b0c2648f4f6dde407335f322a3085114dc4f70e6e50eadc0",
    arm: "92ad40db4a0930bdf872d6336a7b3a18b17c6fd04d9fc769b554bf51c8add505"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
