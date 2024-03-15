cask "terraform-1-6-0" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.6.0"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "8993da0dac34cc8ba9b88f925c17d54ec490bea6d18f6f49b07d535e6264a608",
    arm: "aaf3f6639c9fd3864059955a36ccdadd7b54bab681fbe760525548a53cc0c7ec"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
