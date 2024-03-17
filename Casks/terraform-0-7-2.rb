cask "terraform-0-7-2" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.7.2"

  arch = "amd64"
  sha256 "2a441124efd097007414545714927a9239980a5b0707384b0ee07badbae781cf"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
