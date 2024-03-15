cask "terraform-0-6-6" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.6.6"

  arch = "amd64"
  sha256 "43912f5d3eac34a73eaa182a78e13e8392ff4b81f053be4a61cd78db53c505a7"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
