cask "terraform-1-14-0-beta2" do
  arch arm: "arm64", intel: "amd64"

  version "1.14.0-beta2"
  sha256 arm:   "748b1c73e8b4acb65d48e5401a8609eb16054faab558b55677c155ca6a798445",
         intel: "fed6bb3c67383b4385a1b8f310ffee5f49ad06ce9b96894c48bb6e0ec868c75a"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
