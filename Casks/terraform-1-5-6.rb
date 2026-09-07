cask "terraform-1-5-6" do
  arch arm: "arm64", intel: "amd64"

  version "1.5.6"
  sha256 arm:   "c540d0ccbfb37884232dffd277c0ed08ab01ea7c05fe61b66951dddfc0dd802c",
         intel: "a65a994111b9d1c7fca8fdb76470430a54e1367c6342507228954d944e82f9db"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
