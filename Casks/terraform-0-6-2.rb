cask "terraform-0-6-2" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.6.2"

  arch = "amd64"
  sha256 "76a11f1ccd4af7881fab07ba7008a05ddf5ddeb25da2683c258619c9223d8162"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
