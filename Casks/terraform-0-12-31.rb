cask "terraform-0-12-31" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.12.31"

  arch = "amd64"
  sha256 "ebd96d0c1fc206480a61a190059d3e8aebdfa8733bfa309d7a34ad5a3e0eb322"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
