cask "terraform-1-9-0" do
  arch arm: "arm64", intel: "amd64"

  version "1.9.0"
  sha256 arm:   "b7701c42a9b69524cfe79f0928d48ec4d648bc5e08794df12e8b41b56a0a395c",
         intel: "b69196c831d6315b6e79178c96a66365d724cf4b922ad4a9763cd970aeeecd45"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
