cask "terraform-1-11-0-alpha20250107" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.11.0-alpha20250107"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "38ca7cc1b91699f16ba4bb331b65f3214626c358259217e718bc86bdac34ca9c",
    arm: "3d6527c0dcec2d5de0fefc708897ff38fbd4a23379822f8cd085a631cd997f6b"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
