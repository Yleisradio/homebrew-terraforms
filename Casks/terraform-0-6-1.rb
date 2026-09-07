cask "terraform-0-6-1" do
  version "0.6.1"
  sha256 "a06768862d1c3ee928d26961302c5134c9c8f716e567c4cf52fce85951f61bee"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
