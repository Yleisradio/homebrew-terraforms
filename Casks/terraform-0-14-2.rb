cask "terraform-0-14-2" do
  version "0.14.2"
  sha256 "f26da93e17f347b345555e74d33f3aa79c60ac77efc995e1eb6018ffa06cb70c"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
