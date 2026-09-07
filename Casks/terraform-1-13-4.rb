cask "terraform-1-13-4" do
  arch arm: "arm64", intel: "amd64"

  version "1.13.4"
  sha256 arm:   "6b9e2ff8102c469added7be28cd5cfc2c5a8f7fc3be2df8fe9ee5458d84a1305",
         intel: "0a4441f6aaf37bb18cbaf5c7538f9be638f0d93eb325d285b4b452d014a7737a"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
