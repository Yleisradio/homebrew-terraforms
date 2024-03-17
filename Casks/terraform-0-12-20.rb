cask "terraform-0-12-20" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.12.20"

  arch = "amd64"
  sha256 "67d143f187d0bc7293a40cbbf465b4fdd585669252c522a9b0b96544e0987c1d"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
