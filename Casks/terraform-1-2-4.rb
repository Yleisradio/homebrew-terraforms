cask "terraform-1-2-4" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.2.4"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "e7d2c66264a3da94854ae6ff692bbb9a1bc11c36bb5658e3ef19841388a07430",
    arm: "c31754ff5553707ef9fd2f913b833c779ab05ce192eb14913f51816a077c6798"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
