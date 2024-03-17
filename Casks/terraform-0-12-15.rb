cask "terraform-0-12-15" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.12.15"

  arch = "amd64"
  sha256 "4f238094e332c16ee7bcffe234ae71cf355eb7d54f4ae9f531af0e2d374cecbc"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
