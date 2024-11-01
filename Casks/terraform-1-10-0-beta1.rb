cask "terraform-1-10-0-beta1" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.10.0-beta1"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "66e69b5580907254f8bcb2b5cbec8c2f192ba076fcc7e4a14d9545d7c105c30d",
    arm: "627dca78609e049ecee78b3e4c19a2c0e9dcc5a7c2b5538b60e7d3546bcf1423"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
