cask "terraform-1-8-0-alpha20240228" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.8.0-alpha20240228"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "1c6b38f3e77a79bd285e7f7c7e800f91b58b5e40b6d736422ecd021ed281799c",
    arm: "6251ae32bb0a8a98464e2eb2b43e880b59151ca8db438bef5e10a4785c211074"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
