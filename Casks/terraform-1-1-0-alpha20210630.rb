cask "terraform-1-1-0-alpha20210630" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.1.0-alpha20210630"

  arch = "amd64"
  sha256 "bd8d4a966661875b5c38e7d77a5aabcabb1bd98630c014a4626cbc4b2f8b8f9e"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
