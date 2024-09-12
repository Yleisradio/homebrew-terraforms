cask "terraform-1-10-0-alpha20240911" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.10.0-alpha20240911"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "a4feb68eba7fd53ac86531e1a9b74a813a818d9dc4b03d669049e8bf41ccc119",
    arm: "0dfa97f2735fb85815ad6156a57b997f92b5eff17ae8fb139887156f03347c38"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
