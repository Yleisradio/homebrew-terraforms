cask "terraform-1-11-0-beta1" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.11.0-beta1"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "9704b2159bd5df6f880f527a4b4d43079fd682b7681a061f48ab008c026d2027",
    arm: "aa44c7030be116974f1403981a9f05dc2255b7110dd3503c775188f9506fc236"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
