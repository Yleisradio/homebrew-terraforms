cask "terraform-1-17-0-alpha20260827" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.17.0-alpha20260827"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "9062133eb405a9f90967d904f0255438019bc690d1229cabf125479dd5606ff0",
    arm: "b6c684678e862da85ade584887787137268175b3f202aec19e1bd5cc93130b0f"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
