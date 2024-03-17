cask "terraform-0-9-9" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.9.9"

  arch = "amd64"
  sha256 "657d522fc08b6f6fba0c913c9d474a80b1c9c1c6e9a497445455a8ff22fd72b3"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
