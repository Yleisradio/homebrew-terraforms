cask "terraform-0-12-27" do
  version "0.12.27"
  sha256 "06eaab0bc3451b4d2f7feb47f5587399702d19b9044f5705dc76ad77b401e26f"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
