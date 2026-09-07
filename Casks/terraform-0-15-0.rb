cask "terraform-0-15-0" do
  version "0.15.0"
  sha256 "de9c15e25b5f60fd6cb4bdabf16cff252977a97afde6cfda8d465ef28be5fd81"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
