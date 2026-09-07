cask "terraform-1-14-0-alpha20250903" do
  arch arm: "arm64", intel: "amd64"

  version "1.14.0-alpha20250903"
  sha256 arm:   "c9270dd180181a0c7d32f581470304efa35b5928474543e2f63e1d00f3324834",
         intel: "a4009f250bb3514c562e0b19bf339052ff5cea523928c9009251438f12172d9d"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
