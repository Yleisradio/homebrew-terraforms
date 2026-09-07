cask "terraform-1-9-0-rc1" do
  arch arm: "arm64", intel: "amd64"

  version "1.9.0-rc1"
  sha256 arm:   "e4cc1f51855f6537ac0a6eae7172afb5918c0f46ce9672f5f665b40eb6fb257b",
         intel: "382d5a737e62ea51ce6bbed87adbb470220ea132e8e188d1fb0a1579a5e44689"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
