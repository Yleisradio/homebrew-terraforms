cask "terraform-0-14-2" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.14.2"

  arch = "amd64"
  sha256 "f26da93e17f347b345555e74d33f3aa79c60ac77efc995e1eb6018ffa06cb70c"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
