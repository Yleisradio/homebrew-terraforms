cask "terraform-1-7-0-alpha20231130" do
  arch arm: "arm64", intel: "amd64"

  version "1.7.0-alpha20231130"
  sha256 arm:   "ad7bef2149b8bf8d695aa5fda3f5bffa38c71fdb4ed5c4243f2f826fc6554219",
         intel: "c7e399552d7490df1472e97a72483b030fba9c96a65c42566fb6009483768c8f"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
