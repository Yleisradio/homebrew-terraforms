cask "terraform-1-1-6" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.1.6"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "7a499c1f08d89548ae4c0e829eea43845fa1bd7b464e7df46102b35e6081fe44",
    arm: "f06a14fdb610ec5a7f18bdbb2f67187230eb418329756732d970b6ca3dae12c3"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
