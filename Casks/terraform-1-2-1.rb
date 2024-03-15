cask "terraform-1-2-1" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.2.1"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "31c0fd4deb7c6a77c08d2fdf59c37950e6df7165088c004e1dd7f5e09fbf6307",
    arm: "70159b3e3eb49ee71193815943d9217c59203fd4ee8c6960aeded744094a2250"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
