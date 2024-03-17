cask "terraform-1-6-3" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.6.3"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "6fbd1ba3d64daad05d9384568f7300ee9f15e18a5f3a19a33fe48b8d1b44385a",
    arm: "8cad19d5f34c6ab2af21219fc3968ba30084f5e39bf219230706d360869ed8e9"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
