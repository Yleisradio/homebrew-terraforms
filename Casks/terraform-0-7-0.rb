cask "terraform-0-7-0" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.7.0"

  arch = "amd64"
  sha256 "4720e4b2878b3b0d3d781f68ff363707ed42fe39cb89e2e34c6c11f8e0f76b04"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
