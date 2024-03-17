cask "terraform-0-6-16" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.6.16"

  arch = "amd64"
  sha256 "23feb79263126877e6128a03c600cd626f6691a118a474694c5ad45cc5da9366"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
