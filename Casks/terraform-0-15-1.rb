cask "terraform-0-15-1" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.15.1"

  arch = "amd64"
  sha256 "7f457dd1268ad616b9f832c4b731456676a860a3ecf4b2751957a0e7cf38924d"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
