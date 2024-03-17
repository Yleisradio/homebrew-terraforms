cask "terraform-0-3-7" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.3.7"

  arch = "amd64"
  sha256 "aecdc8119cd637e3e60967c97f9912735400814546b8e925152203fb6e99c732"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
