cask "terraform-0-13-4" do
  version "0.13.4"
  sha256 "5011d509a23ed6e2010a25f0449552b03822d7ef9b8b48f8a2f3277f2f34b736"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
