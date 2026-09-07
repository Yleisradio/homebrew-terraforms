cask "terraform-0-12-18" do
  version "0.12.18"
  sha256 "3a1416cb61322d327c34dd6858c5b61048a9142cf9038b5d008e1527fa74a3fc"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
