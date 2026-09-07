cask "terraform-1-3-0-rc1" do
  arch arm: "arm64", intel: "amd64"

  version "1.3.0-rc1"
  sha256 arm:   "9bb099ead7093701e55e23016cc476188ef19f538b16a69dacc2aeeb4382db30",
         intel: "7010d88700f8b64c647495f8909a46578f70c92178a9e0b710619c1dc825e9f8"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
