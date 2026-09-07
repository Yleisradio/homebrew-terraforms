cask "terraform-0-15-0-beta2" do
  version "0.15.0-beta2"
  sha256 "b669d9b4322f70f292761f62c43751d1a2ce583381336428c3adda3094874dbc"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
