cask "terraform-1-14-0-alpha20250827" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.14.0-alpha20250827"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "4295c1a47ca5baf1fb142bb33500f159d7912d6366cbad7d0618180c98872bd7",
    arm: "4b8eba3e76f6636d7414f73d24e8050e269f88605d7d76276d5940a1cd591ee6"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
