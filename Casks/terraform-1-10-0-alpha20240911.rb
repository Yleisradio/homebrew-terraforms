cask "terraform-1-10-0-alpha20240911" do
  arch arm: "arm64", intel: "amd64"

  version "1.10.0-alpha20240911"
  sha256 arm:   "0dfa97f2735fb85815ad6156a57b997f92b5eff17ae8fb139887156f03347c38",
         intel: "a4feb68eba7fd53ac86531e1a9b74a813a818d9dc4b03d669049e8bf41ccc119"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
