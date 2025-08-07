cask "terraform-1-14-0-alpha20250806" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.14.0-alpha20250806"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "2023cdd907f3d5b6d168b7dbedb2f9c07c9e4374e50e217e8216268c80d0c207",
    arm: "530bd87db40aa0cc6d748b8c9c66b4b13f8009eb8e086144ee9699421d5a9ec5"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
