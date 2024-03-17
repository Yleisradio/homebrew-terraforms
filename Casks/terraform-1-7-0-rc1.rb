cask "terraform-1-7-0-rc1" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.7.0-rc1"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "9e043db605dc385483e8a9348d4dd66d3bae3bd470fb9af775f401daffecdc45",
    arm: "008bf91d5f611b9f58847c927cc8fae130d272af0288a2d2352be523084118e4"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
