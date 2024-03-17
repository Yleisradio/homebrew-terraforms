cask "terraform-0-3-0" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.3.0"

  arch = "amd64"
  sha256 "6c8eb551381eb331c0ef3f5615a60529bc45de1c702b02ed4dfa523cffa26084"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
