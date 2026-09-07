cask "terraform-0-11-15-oci" do
  version "0.11.15-oci"
  sha256 "e219eeee655797d485005014f3833ebfb5484423fa770cf462a03c36f3cfa359"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
