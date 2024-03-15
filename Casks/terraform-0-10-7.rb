cask "terraform-0-10-7" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.10.7"

  arch = "amd64"
  sha256 "60924d17e40be4b055629719a1f633736cca70c4506b8f7e32fa17e0d6e57477"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
