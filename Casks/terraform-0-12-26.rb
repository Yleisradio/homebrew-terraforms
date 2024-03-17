cask "terraform-0-12-26" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.12.26"

  arch = "amd64"
  sha256 "5dd8deea9060d2d90b748425cde9063620131f02922a993e3d925048375d9b29"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
