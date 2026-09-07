cask "terraform-1-8-0-alpha20240228" do
  arch arm: "arm64", intel: "amd64"

  version "1.8.0-alpha20240228"
  sha256 arm:   "6251ae32bb0a8a98464e2eb2b43e880b59151ca8db438bef5e10a4785c211074",
         intel: "1c6b38f3e77a79bd285e7f7c7e800f91b58b5e40b6d736422ecd021ed281799c"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
