cask "terraform-0-9-0" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.9.0"

  arch = "amd64"
  sha256 "b6de7307c989455c4b1f351c2df1ad1a0308edc71868bb432ad74f3980f8a6a3"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
