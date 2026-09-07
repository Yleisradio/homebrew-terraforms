cask "terraform-1-13-0-beta1" do
  arch arm: "arm64", intel: "amd64"

  version "1.13.0-beta1"
  sha256 arm:   "cb6c8efe7e01e5350233c39f4a16054a19e2e77435c27971db41f9c36ab2367c",
         intel: "ce9f78e02a35cd92758c93d11f8c48dcebfe0cb23c8084804690fb6e3336dff9"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
