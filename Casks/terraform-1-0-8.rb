cask "terraform-1-0-8" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.0.8"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "909781ee76250cf7445f3b7d2b82c701688725fa1db3fb5543dfeed8c47b59de",
    arm: "92fa31b93d736fab6f3d105beb502a9da908445ed942a3d46952eae88907c53e"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
