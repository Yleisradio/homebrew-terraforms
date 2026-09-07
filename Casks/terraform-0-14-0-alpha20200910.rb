cask "terraform-0-14-0-alpha20200910" do
  version "0.14.0-alpha20200910"
  sha256 "e75122707182459bd997aafe6b5559260d3429ab09b11547de78b053f4b674ce"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
