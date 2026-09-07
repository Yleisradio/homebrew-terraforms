cask "terraform-0-14-7" do
  version "0.14.7"
  sha256 "bd4afbb92cfc99f3f7e81412536e1aa9bafd6544a87454286d9e9f6ab446179a"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
