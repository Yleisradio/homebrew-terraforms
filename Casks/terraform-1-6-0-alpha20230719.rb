cask "terraform-1-6-0-alpha20230719" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.6.0-alpha20230719"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "16dc5e01e61f75500e67a33ebfe42734857c58d4edbd5c88c2b378bbc2faabf3",
    arm: "a167b313daaa04f68af97690113d051452eb3559550c1342b5a53a4726837a7e"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
