cask "terraform-1-9-2" do
  arch arm: "arm64", intel: "amd64"

  version "1.9.2"
  sha256 arm:   "da2093ea34c0eed12ce6c2238b35e2caf71d3e26cdad3c55607c97be7ebe98ed",
         intel: "315e85f2c0de7d2b8862f9e7f0f78a093501be474b78ed0017aeef9cd902a8eb"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
