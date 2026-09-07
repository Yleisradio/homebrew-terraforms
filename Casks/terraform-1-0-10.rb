cask "terraform-1-0-10" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.10"
  sha256 arm:   "776f2e144039ece66ae326ebda0884254848a2e11f0590757d02e3a74f058c81",
         intel: "077479e98701bc9be88db21abeec684286fd85a3463ce437d7739d2a4e372f18"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
