cask "terraform-1-6-0-alpha20230719" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.0-alpha20230719"
  sha256 arm:   "a167b313daaa04f68af97690113d051452eb3559550c1342b5a53a4726837a7e",
         intel: "16dc5e01e61f75500e67a33ebfe42734857c58d4edbd5c88c2b378bbc2faabf3"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
