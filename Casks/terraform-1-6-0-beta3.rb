cask "terraform-1-6-0-beta3" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.0-beta3"
  sha256 arm:   "ddbdf706f205e5def3388e630786f5f17d72ac15ac5e3d7521fa95a4d4f6d76c",
         intel: "b2cb44e473d196b4e7d9014e1f12acc140e10ea93e14c55da10a82a8af19f21f"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
