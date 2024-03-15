cask "terraform-1-2-0-rc2" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.2.0-rc2"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "74cbeb5ef960093dd3a37ddfed1af5c7659d54940a0d977c041f44dd616711a3",
    arm: "f60029b6e08c5793c19268b44305d3ced89243b40b257bfa7e56c6feb443bed9"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
