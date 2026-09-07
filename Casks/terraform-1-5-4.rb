cask "terraform-1-5-4" do
  arch arm: "arm64", intel: "amd64"

  version "1.5.4"
  sha256 arm:   "6d68b0e1c0eab5f525f395ddaee360e2eccddff49c2af37d132e8c045b5001c5",
         intel: "27aca7551143d98be83b780fa0040b359c43a6704bdd49514ea582d942752718"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
