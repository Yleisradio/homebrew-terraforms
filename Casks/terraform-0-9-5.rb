cask "terraform-0-9-5" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.9.5"

  arch = "amd64"
  sha256 "83b5596c2a510925f90a6572d237b864bc4cf277609ebac294c8f400261e657c"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
