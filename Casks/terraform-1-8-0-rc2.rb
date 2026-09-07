cask "terraform-1-8-0-rc2" do
  arch arm: "arm64", intel: "amd64"

  version "1.8.0-rc2"
  sha256 arm:   "ad0746bc499fffc3057c20c5f338f88ae2a48bde5c42fa2849179df16f8ecd60",
         intel: "de53c9d75f53208c4d07ef6a4221e598ea35860245dd838acd7236fe9f822e27"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
