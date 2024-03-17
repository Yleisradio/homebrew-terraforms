cask "terraform-1-5-5" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.5.5"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "6d61639e2141b7c23a9219c63994f729aa41f91110a1aa08b8a37969fb45e229",
    arm: "c7fdeddb4739fdd5bada9d45fd786e2cbaf6e9e364693eee45c83e95281dad3a"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
