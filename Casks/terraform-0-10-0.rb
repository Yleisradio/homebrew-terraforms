cask "terraform-0-10-0" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.10.0"

  arch = "amd64"
  sha256 "1584dc21ad5ac1dc0d9a2876542a85d092778d00a0622622c28f8740abadddb9"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
