cask "terraform-1-0-11" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.0.11"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "551a16b612edaae1037925d0e2dba30d16504ff4bd66606955172c2ed8d76131",
    arm: "737e1765afbadb3d76e1929d4b4af8da55010839aa08e9e730d46791eb8ea5a6"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
