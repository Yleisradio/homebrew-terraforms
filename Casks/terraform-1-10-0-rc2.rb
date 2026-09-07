cask "terraform-1-10-0-rc2" do
  arch arm: "arm64", intel: "amd64"

  version "1.10.0-rc2"
  sha256 arm:   "b75a86b98e206b9d105267ab5602d7d66a7958449fcc17491999fc870e679b0e",
         intel: "c5c19edda419557ebd90325c7ffec0552fefb10d8234adc01413dc5150b07c01"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
