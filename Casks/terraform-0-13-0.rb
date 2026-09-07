cask "terraform-0-13-0" do
  version "0.13.0"
  sha256 "1ffcd96037faffad5c8692fd989d5f261fdddc8b0fede3996aa09b7bfe6b1b01"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
