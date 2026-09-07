cask "terraform-0-14-5" do
  version "0.14.5"
  sha256 "2edf2491d3b6a98949bb83b427713fdae14780ca9eeb2d6504e4a4325ba5383a"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
