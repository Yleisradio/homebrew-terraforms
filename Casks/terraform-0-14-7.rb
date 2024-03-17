cask "terraform-0-14-7" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.14.7"

  arch = "amd64"
  sha256 "bd4afbb92cfc99f3f7e81412536e1aa9bafd6544a87454286d9e9f6ab446179a"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
