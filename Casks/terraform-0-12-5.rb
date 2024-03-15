cask "terraform-0-12-5" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.12.5"

  arch = "amd64"
  sha256 "e0afcf6f6401e9eaab0be588b55b5226549253854acc1d0cde331b8ca54727e0"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
