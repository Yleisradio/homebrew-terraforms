cask "terraform-1-10-0-rc3" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.10.0-rc3"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "f8331ee9e37a958e3922573f98d8eb04205afe64a5570b098e83f279df69eb1d",
    arm: "e03fb9184832592a773e7a352d6f326a5cd093e54212a17feed0d6eb6ad65a46"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
