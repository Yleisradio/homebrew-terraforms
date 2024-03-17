cask "terraform-0-12-18" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.12.18"

  arch = "amd64"
  sha256 "3a1416cb61322d327c34dd6858c5b61048a9142cf9038b5d008e1527fa74a3fc"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
