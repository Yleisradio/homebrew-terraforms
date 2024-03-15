cask "terraform-1-6-0-beta1" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.6.0-beta1"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "7ee964e69df8dc77d213a7a1ffa94de1264f47f72931d3711fc0b75a3d3f285c",
    arm: "a6d3116887e69e00a277d7fdeff3705d7d308703798aa7d8d9e9249dac165eab"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
