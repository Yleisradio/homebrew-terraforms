cask "terraform-0-9-11" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.9.11"

  arch = "amd64"
  sha256 "31ca22b9b8e840789314085ea3a9a666af261b17c0f86b68dfedf1eb50345cbd"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
