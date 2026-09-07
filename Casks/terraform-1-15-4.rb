cask "terraform-1-15-4" do
  arch arm: "arm64", intel: "amd64"

  version "1.15.4"
  sha256 arm:   "d6b99521a436bfc0e44b18ca47e2c8fec37a74039bf3b529ecc3c71d3e5a9fbf",
         intel: "5d9d58855d08934fb79e8db04332ff89d5e2218a6a3559f6e596b47ec2f74ecd"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
