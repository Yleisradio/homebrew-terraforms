cask "terraform-0-13-6" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.13.6"

  arch = "amd64"
  sha256 "dd933ecd25f38c23e2f7e70503912362429ce251d4d5ef17f4be55bbfd55bafd"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
