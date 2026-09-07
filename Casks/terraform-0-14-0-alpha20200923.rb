cask "terraform-0-14-0-alpha20200923" do
  version "0.14.0-alpha20200923"
  sha256 "adc3dd2d8f4e53d66b09dd9ee9b57e48a60aab34e7bfc013867ed278648594ac"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
