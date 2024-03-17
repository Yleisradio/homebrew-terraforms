cask "terraform-0-12-14" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.12.14"

  arch = "amd64"
  sha256 "23de0d866199d0d305084c146969115318773921fcf22c1d78503bdafec4c44d"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
