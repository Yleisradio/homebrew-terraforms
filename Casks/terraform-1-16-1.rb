cask "terraform-1-16-1" do
  arch arm: "arm64", intel: "amd64"

  version "1.16.1"
  sha256 arm:   "e22cba761ddbd4d218939b28715ab3af37aaf8a42efa41f7d75b2c3d73636060",
         intel: "3f165e7fabdb8ec44151494418efa1e8095c3f589ed8376a93578a96867a062c"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
