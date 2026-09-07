cask "terraform-1-2-0-rc2" do
  arch arm: "arm64", intel: "amd64"

  version "1.2.0-rc2"
  sha256 arm:   "f60029b6e08c5793c19268b44305d3ced89243b40b257bfa7e56c6feb443bed9",
         intel: "74cbeb5ef960093dd3a37ddfed1af5c7659d54940a0d977c041f44dd616711a3"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
