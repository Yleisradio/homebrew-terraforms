cask "terraform-1-13-0-beta3" do
  arch arm: "arm64", intel: "amd64"

  version "1.13.0-beta3"
  sha256 arm:   "07b3d85f4b45b4f05170f689b89566802fdd52affe1db9c32d35399624faf548",
         intel: "2a5ef38d5247e28f8ac42e5efe927c42683b181c4d3be341e49fdc66549b3430"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
