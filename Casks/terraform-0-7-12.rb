cask "terraform-0-7-12" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.7.12"

  arch = "amd64"
  sha256 "bfd79badf239509b09c5f036bd5cb1d688297644f26ffaf39d89c1abf9a2936d"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
