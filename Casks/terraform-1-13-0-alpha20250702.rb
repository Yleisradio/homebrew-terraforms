cask "terraform-1-13-0-alpha20250702" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.13.0-alpha20250702"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "2221cb3409ddb9b2db02da442895463b101ca65c869550109ffca86ddd5dec5f",
    arm: "197dd08398c8021e7b28fa111a266e5040c768a81917852f7329d3fbe63415ea"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
