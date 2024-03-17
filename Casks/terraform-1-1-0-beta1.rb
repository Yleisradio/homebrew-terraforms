cask "terraform-1-1-0-beta1" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.1.0-beta1"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "9eecd065f592541b0aa444830e905606e549c92969526ff6a6b5d3d9059268a4",
    arm: "c55dbc74a318761f13b8343a116b75a1720aa8153e409aca0ce4519debfafd55"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
