cask "terraform-0-14-11" do
  version "0.14.11"
  sha256 "88d266a53b4c09e9778123f274351d7f6e48c08c12edaece8f4e360ade3bd847"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
