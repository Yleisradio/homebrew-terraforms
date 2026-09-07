cask "terraform-1-14-0-alpha20250806" do
  arch arm: "arm64", intel: "amd64"

  version "1.14.0-alpha20250806"
  sha256 arm:   "530bd87db40aa0cc6d748b8c9c66b4b13f8009eb8e086144ee9699421d5a9ec5",
         intel: "2023cdd907f3d5b6d168b7dbedb2f9c07c9e4374e50e217e8216268c80d0c207"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
