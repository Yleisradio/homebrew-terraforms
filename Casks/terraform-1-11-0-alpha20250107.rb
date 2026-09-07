cask "terraform-1-11-0-alpha20250107" do
  arch arm: "arm64", intel: "amd64"

  version "1.11.0-alpha20250107"
  sha256 arm:   "3d6527c0dcec2d5de0fefc708897ff38fbd4a23379822f8cd085a631cd997f6b",
         intel: "38ca7cc1b91699f16ba4bb331b65f3214626c358259217e718bc86bdac34ca9c"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
