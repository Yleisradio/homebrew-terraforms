cask "terraform-1-17-0-alpha20260827" do
  arch arm: "arm64", intel: "amd64"

  version "1.17.0-alpha20260827"
  sha256 arm:   "b6c684678e862da85ade584887787137268175b3f202aec19e1bd5cc93130b0f",
         intel: "9062133eb405a9f90967d904f0255438019bc690d1229cabf125479dd5606ff0"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
