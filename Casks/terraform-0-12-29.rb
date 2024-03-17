cask "terraform-0-12-29" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.12.29"

  arch = "amd64"
  sha256 "a920c9fcf912b5f83a4e57cb8ab7afbe5615ec54edd893271c8d271a4d945592"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
