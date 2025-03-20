cask "terraform-1-12-0-alpha20250319" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.12.0-alpha20250319"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "4ce710db2bd8bdf2ff1cf2d1ba8eedc0b32dabc192a8bbd8c5327b84eac69382",
    arm: "e3bc64ae3f11b0a0a695d5cd1cc4c84ca226b808c260227e5f9e127ad139507c"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
