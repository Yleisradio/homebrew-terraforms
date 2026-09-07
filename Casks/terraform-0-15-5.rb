cask "terraform-0-15-5" do
  version "0.15.5"
  sha256 "5ad75ed3def05f36b5c5dab97dee00b5d3d86be9f9dcd205b48136312505f3fc"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
