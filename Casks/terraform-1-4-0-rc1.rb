cask "terraform-1-4-0-rc1" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.4.0-rc1"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "db875cd9b42a4ea285a9365a329e42de3affba53cdcbd96f86588546c6b06fff",
    arm: "46ac4bd57da743c70dac00bd3dccfa25fcbf7cfaa520b4c1cd504d669776d107"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
