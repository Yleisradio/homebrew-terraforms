cask "terraform-0-15-5" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.15.5"

  arch = "amd64"
  sha256 "5ad75ed3def05f36b5c5dab97dee00b5d3d86be9f9dcd205b48136312505f3fc"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
