cask "terraform-0-10-0-beta2" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.10.0-beta2"

  arch = "amd64"
  sha256 "6138b4177e392e759bebc378cfe3a8dbbab6eae43214269464a005597aed85c6"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
