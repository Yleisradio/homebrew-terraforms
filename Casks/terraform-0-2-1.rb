cask "terraform-0-2-1" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.2.1"

  arch = "amd64"
  sha256 "028076fa5b074d2b2457f857fe8f2182a8ef7a35c15b8c3b18a129df60790ea7"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
