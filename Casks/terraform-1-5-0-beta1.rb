cask "terraform-1-5-0-beta1" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.5.0-beta1"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "e4485902a7086afb80b35626326274a041cc38b2e57fdd1f995d5747e1e50f99",
    arm: "7d5364ccccd2faac8f9bbcfea056515028c5b3d7cc1430f465e3cc786db92182"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
