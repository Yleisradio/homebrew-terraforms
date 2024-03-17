cask "terraform-1-7-0-alpha20231130" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.7.0-alpha20231130"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "c7e399552d7490df1472e97a72483b030fba9c96a65c42566fb6009483768c8f",
    arm: "ad7bef2149b8bf8d695aa5fda3f5bffa38c71fdb4ed5c4243f2f826fc6554219"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
