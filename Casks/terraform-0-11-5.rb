cask "terraform-0-11-5" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.11.5"

  arch = "amd64"
  sha256 "0af78baf9b1a249544cc0b17d6b7abb32cc513a554d1f7dcc85c873e2af93586"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
