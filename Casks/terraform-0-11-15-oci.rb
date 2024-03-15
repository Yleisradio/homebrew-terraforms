cask "terraform-0-11-15-oci" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.11.15-oci"

  arch = "amd64"
  sha256 "e219eeee655797d485005014f3833ebfb5484423fa770cf462a03c36f3cfa359"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
