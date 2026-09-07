cask "terraform-1-4-0-beta2" do
  arch arm: "arm64", intel: "amd64"

  version "1.4.0-beta2"
  sha256 arm:   "917bbbf62657640f3196125b232cc5503b5dcfbba23001ade03164ef4a4f9ea0",
         intel: "94b42aabedb8b57fa022d7d4720ed45dc67cb86c91e3dc182eb2aef70bb33408"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
