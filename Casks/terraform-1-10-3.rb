cask "terraform-1-10-3" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.10.3"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "a7ff68a57ead3ca7ac0a4d055b5f08a2ce0474e371d935e75398fe7f864ba65e",
    arm: "ea4dfb077425a179ee45e90daa255d21ef976867d347edcc4526f71370abbaf3"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
