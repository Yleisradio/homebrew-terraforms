cask "terraform-0-13-1" do
  version "0.13.1"
  sha256 "8c9bab51223e7039572763326267c1989d1727f552b3728f586cfa868b01b537"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
