cask "terraform-1-9-5" do
  arch arm: "arm64", intel: "amd64"

  version "1.9.5"
  sha256 arm:   "b7eca5cd6f0f6644d45d8708c1b864e64a9e26c355d2c9b585faa049f640fe71",
         intel: "c28945c377d04b1d237f704729258234c471c8c4f617a1303042862f708ebbc6"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
