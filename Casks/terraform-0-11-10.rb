cask "terraform-0-11-10" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.11.10"

  arch = "amd64"
  sha256 "cb5ae1fa5bed45d81d79d427cd1dd84ed7c04f712c72b420003e28f522a77a78"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
