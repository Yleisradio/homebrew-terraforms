cask "terraform-1-8-0-rc1" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.8.0-rc1"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "335e48269d1d6f3df641d07766695532d78ae7b72fc3d8c05fb08ac4b4db2202",
    arm: "8b2e3dc9c89a53e84863c351ec08c70fc17d9aeaba45638e19bda12ee9aa63e8"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
