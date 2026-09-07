cask "terraform-1-0-8" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.8"
  sha256 arm:   "92fa31b93d736fab6f3d105beb502a9da908445ed942a3d46952eae88907c53e",
         intel: "909781ee76250cf7445f3b7d2b82c701688725fa1db3fb5543dfeed8c47b59de"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
