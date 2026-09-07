cask "terraform-0-12-9" do
  version "0.12.9"
  sha256 "d8314eda99d48f17c737643eb1804c654c6e08c53465dd0fa8d8348c77150e6b"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
