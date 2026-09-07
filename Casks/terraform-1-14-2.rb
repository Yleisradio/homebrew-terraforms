cask "terraform-1-14-2" do
  arch arm: "arm64", intel: "amd64"

  version "1.14.2"
  sha256 arm:   "c81719634fc5f325b3711e8b9c5444bd0d7b8590b0b9aa2ff8f00ff50a9d60c8",
         intel: "62fca69aa1fc3093a522182ab86ed0c5095fafc146b432cd52dca861c0a3545b"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
