cask "terraform-1-9-0" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.9.0"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "b69196c831d6315b6e79178c96a66365d724cf4b922ad4a9763cd970aeeecd45",
    arm: "b7701c42a9b69524cfe79f0928d48ec4d648bc5e08794df12e8b41b56a0a395c"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
