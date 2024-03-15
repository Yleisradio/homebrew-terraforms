cask "terraform-0-8-0" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.8.0"

  arch = "amd64"
  sha256 "4f4410be73200f95f84e359409481c8c48bc70e659fc5f7ea3f33a1db574ff65"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
