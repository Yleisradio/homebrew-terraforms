cask "terraform-0-6-4" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.6.4"

  arch = "amd64"
  sha256 "e2eee073432487aabd69003b3a293caa6e087d4b435d29f6406079333e2dca73"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
