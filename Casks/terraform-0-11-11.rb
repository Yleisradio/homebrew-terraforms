cask "terraform-0-11-11" do
  version "0.11.11"
  sha256 "6b6e8253b678554c67d717c42209fd857bfe64a1461763c05d3d1d85c6f618d3"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
