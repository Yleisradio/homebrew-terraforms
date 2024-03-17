cask "terraform-0-10-3" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.10.3"

  arch = "amd64"
  sha256 "6d7c51b8b8eee81b07c6b594077e0af95be518ed88b312bd3989c37b2924c2e6"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
