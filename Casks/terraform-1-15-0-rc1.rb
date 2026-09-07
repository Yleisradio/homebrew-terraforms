cask "terraform-1-15-0-rc1" do
  arch arm: "arm64", intel: "amd64"

  version "1.15.0-rc1"
  sha256 arm:   "e38ea5d83449ceafed92cf4cc8eb017484c4c920f1133f6708fe145e7051843a",
         intel: "de04bd2073bdd20c948d454c1e57b899471a317cf04bf2cb3d5936d584be7123"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
