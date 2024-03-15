cask "terraform-1-5-4" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.5.4"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "27aca7551143d98be83b780fa0040b359c43a6704bdd49514ea582d942752718",
    arm: "6d68b0e1c0eab5f525f395ddaee360e2eccddff49c2af37d132e8c045b5001c5"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
