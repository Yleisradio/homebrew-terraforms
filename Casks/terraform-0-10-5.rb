cask "terraform-0-10-5" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.10.5"

  arch = "amd64"
  sha256 "d39ce30b7aa77834d3000173d95df476c0fcfea8114825d8276c38277d3a7436"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
