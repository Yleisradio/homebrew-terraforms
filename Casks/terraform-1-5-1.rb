cask "terraform-1-5-1" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.5.1"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "4f9f518b40399a9271dd8e449a6335ec94a4de60fc8789711ede7a4b9e630a47",
    arm: "f691b79319bd82daac2d8b6cbb595d3e8523296c4cd20bf7da0d12fe9eefdfa7"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
