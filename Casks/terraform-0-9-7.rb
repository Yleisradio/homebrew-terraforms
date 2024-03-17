cask "terraform-0-9-7" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.9.7"

  arch = "amd64"
  sha256 "ece7ad727eac202b571c64018ec3d09b4d7693aea7033db81e239d96d11d48b9"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
