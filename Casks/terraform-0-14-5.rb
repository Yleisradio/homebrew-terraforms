cask "terraform-0-14-5" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.14.5"

  arch = "amd64"
  sha256 "2edf2491d3b6a98949bb83b427713fdae14780ca9eeb2d6504e4a4325ba5383a"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
