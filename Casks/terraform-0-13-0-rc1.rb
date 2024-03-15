cask "terraform-0-13-0-rc1" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.13.0-rc1"

  arch = "amd64"
  sha256 "2bbbe855e1e09f03ff06334a7f0b3ba15506e6ac4deb25938f34bb210540a687"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
