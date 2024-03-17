cask "terraform-1-2-0-beta1" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.2.0-beta1"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "da218c513f6062f565ca5f1749acca6cf93d80047d618c2d52b1ee31b3243d64",
    arm: "6dd843ee5e947ca93d731bccf147753c43dfcdfd7f5df1460e932822b5340bd3"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
