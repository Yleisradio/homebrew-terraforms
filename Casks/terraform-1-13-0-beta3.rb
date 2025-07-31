cask "terraform-1-13-0-beta3" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.13.0-beta3"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "2a5ef38d5247e28f8ac42e5efe927c42683b181c4d3be341e49fdc66549b3430",
    arm: "07b3d85f4b45b4f05170f689b89566802fdd52affe1db9c32d35399624faf548"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
