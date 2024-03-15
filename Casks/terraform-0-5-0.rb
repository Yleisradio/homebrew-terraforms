cask "terraform-0-5-0" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.5.0"

  arch = "amd64"
  sha256 "8033564434ed964fc630fe5ff8b4830945d38a528ad5b14e7a88e23f85591f05"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
