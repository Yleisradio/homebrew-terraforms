cask "terraform-1-1-0-beta1" do
  arch arm: "arm64", intel: "amd64"

  version "1.1.0-beta1"
  sha256 arm:   "c55dbc74a318761f13b8343a116b75a1720aa8153e409aca0ce4519debfafd55",
         intel: "9eecd065f592541b0aa444830e905606e549c92969526ff6a6b5d3d9059268a4"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
