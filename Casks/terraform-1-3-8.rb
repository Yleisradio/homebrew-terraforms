cask "terraform-1-3-8" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.3.8"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "1a27a6fac31ecb05de610daf61a29fe83d304d7c519d773afbf56c11c3b6276b",
    arm: "873b05ac81645cd7289d6ccfd3e73d4735af1a453f2cd19da0650bdabf7d2eb6"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
