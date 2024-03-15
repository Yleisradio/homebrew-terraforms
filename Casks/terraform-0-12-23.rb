cask "terraform-0-12-23" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.12.23"

  arch = "amd64"
  sha256 "12293764366ade518e2022c6ad981712e029e24bdbf3e1d5822de82dec1a6dbd"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
