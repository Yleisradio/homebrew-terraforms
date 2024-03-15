cask "terraform-0-7-10" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.7.10"

  arch = "amd64"
  sha256 "e65095c09cd94d60f0a6bc470ad29b249051448533344722755cc617bdd277a4"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
