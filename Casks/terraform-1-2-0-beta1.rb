cask "terraform-1-2-0-beta1" do
  arch arm: "arm64", intel: "amd64"

  version "1.2.0-beta1"
  sha256 arm:   "6dd843ee5e947ca93d731bccf147753c43dfcdfd7f5df1460e932822b5340bd3",
         intel: "da218c513f6062f565ca5f1749acca6cf93d80047d618c2d52b1ee31b3243d64"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
