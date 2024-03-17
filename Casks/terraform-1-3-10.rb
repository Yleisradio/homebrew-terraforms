cask "terraform-1-3-10" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.3.10"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "e5cf68ef9b259503abf515a1716fcfe21d46af22e24b8ebbbe7849fbfafb428c",
    arm: "39cf7882108034f78c0d9144153271efb11ba99924170828eda9b0196f3da6fd"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
