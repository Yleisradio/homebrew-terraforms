cask "terraform-1-3-4" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.3.4"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "2a75c69ec5ed8506658b266a40075256b62a7d245ff6297df7e48fa72af23879",
    arm: "a1f740f92afac6db84421a3ec07d9061c34a32f88b4b0b47d243de16c961169f"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
