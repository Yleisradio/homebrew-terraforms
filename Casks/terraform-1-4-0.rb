cask "terraform-1-4-0" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.4.0"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "e897a4217f1c3bfe37c694570dcc6371336fbda698790bb6b0547ec8daf1ffb3",
    arm: "d4a1e564714c6acf848e86dc020ff182477b49f932e3f550a5d9c8f5da7636fb"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
