cask "terraform-0-7-6" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.7.6"

  arch = "amd64"
  sha256 "5c315498c58700d5e0eeba205c1e07e5299d04dd0f7fb7e87e4c38a8c9903774"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
