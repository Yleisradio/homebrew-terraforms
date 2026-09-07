cask "terraform-0-12-8" do
  version "0.12.8"
  sha256 "6f472c3cff1b679c43ebf128e164d35fc15ff95f10a8a02f9027fd60a0bcab6f"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
