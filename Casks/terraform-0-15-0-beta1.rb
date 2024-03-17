cask "terraform-0-15-0-beta1" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.15.0-beta1"

  arch = "amd64"
  sha256 "bf4484361e9b2348b2f61856855c90f010c3cba927851dfcea3a3ac027306519"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
