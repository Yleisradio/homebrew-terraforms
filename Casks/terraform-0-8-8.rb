cask "terraform-0-8-8" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.8.8"

  arch = "amd64"
  sha256 "55ab547539e68c9375c144062460457fcfdb3f5b9f412d3bb162f73298602d78"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
