cask "terraform-1-14-0-alpha20250724" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.14.0-alpha20250724"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "ac43ec761bfef40c8db42fa9b3c5d10556637fb70a3352665c0f9c2b30240f83",
    arm: "6bb8679844f12816f18deb90a05fc223a3e15748d2d2c94586c527aa61844633"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
