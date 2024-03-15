cask "terraform-1-1-0-beta2" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.1.0-beta2"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "ccdcab84417c3643ab1f97fb97b6220ca9a27b8341746799130d8d4c55e65c6f",
    arm: "8b9f02ba2e197ee439caa7150de13d293ce7b13156ad3ae296d1267b0ea422d7"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
