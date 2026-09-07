cask "terraform-1-5-0-beta1" do
  arch arm: "arm64", intel: "amd64"

  version "1.5.0-beta1"
  sha256 arm:   "7d5364ccccd2faac8f9bbcfea056515028c5b3d7cc1430f465e3cc786db92182",
         intel: "e4485902a7086afb80b35626326274a041cc38b2e57fdd1f995d5747e1e50f99"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
