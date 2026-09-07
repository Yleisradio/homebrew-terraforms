cask "terraform-1-1-0-beta2" do
  arch arm: "arm64", intel: "amd64"

  version "1.1.0-beta2"
  sha256 arm:   "8b9f02ba2e197ee439caa7150de13d293ce7b13156ad3ae296d1267b0ea422d7",
         intel: "ccdcab84417c3643ab1f97fb97b6220ca9a27b8341746799130d8d4c55e65c6f"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
