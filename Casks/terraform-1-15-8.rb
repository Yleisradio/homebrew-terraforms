cask "terraform-1-15-8" do
  arch arm: "arm64", intel: "amd64"

  version "1.15.8"
  sha256 arm:   "f210110c5698b94d803a7a63cdb0251b5455c150841478808e2bbb343f95ed68",
         intel: "e2e812e783771159bf758fd4e55d6dc9bb08f63e2af2c63d212721807a02c5dc"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
