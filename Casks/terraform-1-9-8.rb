cask "terraform-1-9-8" do
  arch arm: "arm64", intel: "amd64"

  version "1.9.8"
  sha256 arm:   "873d7b925d08578fb6bb9c12c7cd92ae73e289e07c360f2fdd69f9036b7baaab",
         intel: "be591e8c59c49d0cfbc7664d24910a4b43840b89d0a4bbca662149bbf0397e91"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
