cask "terraform-1-3-5" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.3.5"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "e6c9836188265b20c2588e9c9d6b1727094b324a379337e68ba58a6d26be8b51",
    arm: "fcec1cbff229fbe59b03257ba2451d5ad1f5129714f08ccf6372b2737647c063"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
