cask "terraform-0-12-21" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.12.21"

  arch = "amd64"
  sha256 "2303c361e66ae64ccbf09b0e1c50cea4f28727e913c52d930e8a885d79c099f3"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
