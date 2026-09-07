cask "terraform-0-14-0-beta1" do
  version "0.14.0-beta1"
  sha256 "8ecff69cebdd6f5bb7448bff82813eb978c1c3714976e38ca7ef8115f259f3f7"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
