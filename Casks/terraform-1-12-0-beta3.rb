cask "terraform-1-12-0-beta3" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.12.0-beta3"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "f484a640fc20561e0072309d0b461c17e07c9042e0bf361fa1cd13c9978d697c",
    arm: "32748b104a4ba1b510bf16eb6ab75fdbe6a7cf6453d49672d41a3e2596247678"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
