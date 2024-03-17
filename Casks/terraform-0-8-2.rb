cask "terraform-0-8-2" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.8.2"

  arch = "amd64"
  sha256 "06bec1c06dbeb89ea7fdc2036be972372aa6847d3883786ab285386750a7ceb6"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
