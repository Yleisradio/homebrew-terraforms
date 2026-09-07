cask "terraform-0-10-0" do
  version "0.10.0"
  sha256 "1584dc21ad5ac1dc0d9a2876542a85d092778d00a0622622c28f8740abadddb9"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
