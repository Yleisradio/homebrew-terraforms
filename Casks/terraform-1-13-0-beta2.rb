cask "terraform-1-13-0-beta2" do
  arch arm: "arm64", intel: "amd64"

  version "1.13.0-beta2"
  sha256 arm:   "01057204799b93acdab5a33c34087f9e974c4b36532f6ee570e008edf45231e2",
         intel: "d1e205a68f542cc8462614ca3d6a2982547f27660fbef4f21d97d15b9c9d023b"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
