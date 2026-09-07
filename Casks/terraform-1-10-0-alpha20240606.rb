cask "terraform-1-10-0-alpha20240606" do
  arch arm: "arm64", intel: "amd64"

  version "1.10.0-alpha20240606"
  sha256 arm:   "d2af2a735146eb3968d732f1ac71eacc9450e1488189531032e14aedeeee1870",
         intel: "029c4c0c784d64be2cecb0200c8e7361ad7c39c61785381741caeab7a4ff47ab"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
