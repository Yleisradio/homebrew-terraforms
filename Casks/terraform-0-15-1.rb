cask "terraform-0-15-1" do
  version "0.15.1"
  sha256 "7f457dd1268ad616b9f832c4b731456676a860a3ecf4b2751957a0e7cf38924d"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
