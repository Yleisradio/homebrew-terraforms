cask "terraform-1-10-0-rc3" do
  arch arm: "arm64", intel: "amd64"

  version "1.10.0-rc3"
  sha256 arm:   "e03fb9184832592a773e7a352d6f326a5cd093e54212a17feed0d6eb6ad65a46",
         intel: "f8331ee9e37a958e3922573f98d8eb04205afe64a5570b098e83f279df69eb1d"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
