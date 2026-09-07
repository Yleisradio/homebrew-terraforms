cask "terraform-1-11-0-rc1" do
  arch arm: "arm64", intel: "amd64"

  version "1.11.0-rc1"
  sha256 arm:   "90612ac98a2ada9848f50506cee7148aa648c3304eaa1467af6b411fef70a721",
         intel: "73085f30f6a2b36d43751de5614d5e635b0f1af6fa0341baacfac7a08bf4783b"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
