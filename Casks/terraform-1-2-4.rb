cask "terraform-1-2-4" do
  arch arm: "arm64", intel: "amd64"

  version "1.2.4"
  sha256 arm:   "c31754ff5553707ef9fd2f913b833c779ab05ce192eb14913f51816a077c6798",
         intel: "e7d2c66264a3da94854ae6ff692bbb9a1bc11c36bb5658e3ef19841388a07430"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
