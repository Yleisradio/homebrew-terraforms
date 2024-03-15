cask "terraform-0-12-27" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.12.27"

  arch = "amd64"
  sha256 "06eaab0bc3451b4d2f7feb47f5587399702d19b9044f5705dc76ad77b401e26f"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
