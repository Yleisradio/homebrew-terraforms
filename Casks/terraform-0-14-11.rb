cask "terraform-0-14-11" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.14.11"

  arch = "amd64"
  sha256 "88d266a53b4c09e9778123f274351d7f6e48c08c12edaece8f4e360ade3bd847"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
