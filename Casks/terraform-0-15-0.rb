cask "terraform-0-15-0" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.15.0"

  arch = "amd64"
  sha256 "de9c15e25b5f60fd6cb4bdabf16cff252977a97afde6cfda8d465ef28be5fd81"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
