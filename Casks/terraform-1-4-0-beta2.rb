cask "terraform-1-4-0-beta2" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.4.0-beta2"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "94b42aabedb8b57fa022d7d4720ed45dc67cb86c91e3dc182eb2aef70bb33408",
    arm: "917bbbf62657640f3196125b232cc5503b5dcfbba23001ade03164ef4a4f9ea0"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
