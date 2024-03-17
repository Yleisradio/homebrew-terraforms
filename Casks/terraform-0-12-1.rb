cask "terraform-0-12-1" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.12.1"

  arch = "amd64"
  sha256 "3c5b0aa8f3acf477a5d5ae997174bd16d49bb0789915b5a40a6deb39692a5c8d"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
