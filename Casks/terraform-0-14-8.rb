cask "terraform-0-14-8" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.14.8"

  arch = "amd64"
  sha256 "596363941c5acfb05d81f6fe8813f007427de0e976972bdd60106bf4e6d8eb54"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
