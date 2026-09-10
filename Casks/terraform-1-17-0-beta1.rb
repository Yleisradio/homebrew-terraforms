cask "terraform-1-17-0-beta1" do
  arch arm: "arm64", intel: "amd64"

  version "1.17.0-beta1"
  sha256 arm:   "88269fa7fa3461f6ba577a736df7d8ee26f8b1d4d986feeb1e55d3d8f2399132",
         intel: "211ee1fd1d8587680136da1706df17479f6b96d857dbbdc27271b55ebd39cf63"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
