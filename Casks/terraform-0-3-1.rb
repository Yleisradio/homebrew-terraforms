cask "terraform-0-3-1" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.3.1"

  arch = "amd64"
  sha256 "dda41425c7eb06c5e8b3f5ad4904e993aa8a9ab6b61f954ee2e259667cb6ff57"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
