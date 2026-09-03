cask "terraform-1-16-1" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.16.1"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "3f165e7fabdb8ec44151494418efa1e8095c3f589ed8376a93578a96867a062c",
    arm: "e22cba761ddbd4d218939b28715ab3af37aaf8a42efa41f7d75b2c3d73636060"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
