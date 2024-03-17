cask "terraform-1-3-0" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.3.0"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "80e55182d4495da867c93c25dc6ae29be83ece39d3225e6adedecd55b72d6bbf",
    arm: "df703317b5c7f80dc7c61e46de4697c9f440e650a893623351ab5e184995b404"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
