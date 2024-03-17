cask "terraform-0-7-4" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.7.4"

  arch = "amd64"
  sha256 "21c8ecc161628ecab88f45eba6b5ca1fbf3eb897e8bc951b0fbac4c0ad77fb04"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
