cask "terraform-1-14-7" do
  arch arm: "arm64", intel: "amd64"

  version "1.14.7"
  sha256 arm:   "e9004e245b3e56bff9c7a6c572295d710f6ce4fc72e3910e99519ebdcb46d1bb",
         intel: "469f19fb58ed6f67abc858f1d1a20a2fdb1fadda8eaa0f766da1c8acd1518cb0"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
