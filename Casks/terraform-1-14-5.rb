cask "terraform-1-14-5" do
  arch arm: "arm64", intel: "amd64"

  version "1.14.5"
  sha256 arm:   "132e740024635494900e561014cf4d111a66c6454fcd548dee5cc4cf873ee52f",
         intel: "16efdfb151b49a65fd9b47e30577a6a7012e6edabd2a034445fe7ddf74733ffb"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
