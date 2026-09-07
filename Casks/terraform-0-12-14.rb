cask "terraform-0-12-14" do
  version "0.12.14"
  sha256 "23de0d866199d0d305084c146969115318773921fcf22c1d78503bdafec4c44d"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
