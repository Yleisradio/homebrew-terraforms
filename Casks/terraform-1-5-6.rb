cask "terraform-1-5-6" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.5.6"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "a65a994111b9d1c7fca8fdb76470430a54e1367c6342507228954d944e82f9db",
    arm: "c540d0ccbfb37884232dffd277c0ed08ab01ea7c05fe61b66951dddfc0dd802c"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
