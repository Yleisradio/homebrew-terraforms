cask "terraform-1-6-0" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.0"
  sha256 arm:   "aaf3f6639c9fd3864059955a36ccdadd7b54bab681fbe760525548a53cc0c7ec",
         intel: "8993da0dac34cc8ba9b88f925c17d54ec490bea6d18f6f49b07d535e6264a608"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
