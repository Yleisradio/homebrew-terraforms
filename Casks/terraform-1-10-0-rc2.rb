cask "terraform-1-10-0-rc2" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.10.0-rc2"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "c5c19edda419557ebd90325c7ffec0552fefb10d8234adc01413dc5150b07c01",
    arm: "b75a86b98e206b9d105267ab5602d7d66a7958449fcc17491999fc870e679b0e"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
