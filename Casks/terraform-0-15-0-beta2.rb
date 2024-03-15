cask "terraform-0-15-0-beta2" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.15.0-beta2"

  arch = "amd64"
  sha256 "b669d9b4322f70f292761f62c43751d1a2ce583381336428c3adda3094874dbc"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
