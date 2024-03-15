cask "terraform-0-1-0" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.1.0"

  arch = "amd64"
  sha256 "309aed0ed61586e2682f58b77781f8e9805745a5edd1aebcddf883c9f624a0b9"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
