cask "terraform-1-10-0-rc1" do
  arch arm: "arm64", intel: "amd64"

  version "1.10.0-rc1"
  sha256 arm:   "c0e5e60184a5698fbeb67408dc16cf8600ba0e20e7d9bf0a1d56d8f19e7f2938",
         intel: "561904d1e1fdfa7ceb03e8c2e497be28ae2ad1f02295619e1f3e7fb2e9c46e45"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
