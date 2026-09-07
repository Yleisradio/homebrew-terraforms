cask "terraform-0-14-6" do
  version "0.14.6"
  sha256 "d83b0427138749ae105ae10fa65cbb81027b5efc970bacd3911c674af932e27c"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
