cask "terraform-0-14-0-alpha20201007" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.14.0-alpha20201007"

  arch = "amd64"
  sha256 "542f89fd3005dfe9e7d2583182f78872def6a82dda31acafde3f0f8fa99f5098"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
