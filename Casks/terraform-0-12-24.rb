cask "terraform-0-12-24" do
  version "0.12.24"
  sha256 "d97e5bb1064aa2da0b82865ecf588bea20afdd6bfaf0692fafcb9ff765de9b2b"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
