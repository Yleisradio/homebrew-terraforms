cask "terraform-1-10-0-rc1" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.10.0-rc1"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "561904d1e1fdfa7ceb03e8c2e497be28ae2ad1f02295619e1f3e7fb2e9c46e45",
    arm: "c0e5e60184a5698fbeb67408dc16cf8600ba0e20e7d9bf0a1d56d8f19e7f2938"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
