cask "terraform-1-10-0-alpha20240918" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.10.0-alpha20240918"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "049f6a04740ccca5bf91e20a113cd6adbc0a22eaa682024627c401c2362092e3",
    arm: "bc711c5043f4933a8fe76682a8f8d165ffda2ba5e8d3bc518e33be1e205b2ed0"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
