cask "terraform-0-11-11" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.11.11"

  arch = "amd64"
  sha256 "6b6e8253b678554c67d717c42209fd857bfe64a1461763c05d3d1d85c6f618d3"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
