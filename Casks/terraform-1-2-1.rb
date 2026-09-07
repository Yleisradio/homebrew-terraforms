cask "terraform-1-2-1" do
  arch arm: "arm64", intel: "amd64"

  version "1.2.1"
  sha256 arm:   "70159b3e3eb49ee71193815943d9217c59203fd4ee8c6960aeded744094a2250",
         intel: "31c0fd4deb7c6a77c08d2fdf59c37950e6df7165088c004e1dd7f5e09fbf6307"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
