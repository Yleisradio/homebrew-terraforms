cask "terraform-1-4-0-beta1" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.4.0-beta1"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "08c54d8aa2429dfc289e2de06797d3f0f3b03e234e90a8e3c64bc69aa2f5f5c5",
    arm: "62de2c92d349626ecde3bbbb8645ac61247b6860f83d34a0ac5e93696ccc3813"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
