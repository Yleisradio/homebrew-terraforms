cask "terraform-0-12-17" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.12.17"

  arch = "amd64"
  sha256 "130235cad547ab0f9849dedbd020528e0c76798bd53528a3cd63c7ce51290e8f"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
