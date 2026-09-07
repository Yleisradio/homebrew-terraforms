cask "terraform-1-0-0" do
  version "1.0.0"
  sha256 "397eccdf68eb343e4946c37a877a4764409fe0b9037041daf1d17db18bca9839"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
