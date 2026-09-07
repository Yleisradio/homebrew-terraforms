cask "terraform-1-11-0-beta2" do
  arch arm: "arm64", intel: "amd64"

  version "1.11.0-beta2"
  sha256 arm:   "b5f453603488e3559f33100520a0f7c1f3321a4957c6ed62c79cb4c5092c5497",
         intel: "a556a301ca5d4274bc5ee4ca7dfb6497f93014dbdde3b893dcb805028628157a"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
