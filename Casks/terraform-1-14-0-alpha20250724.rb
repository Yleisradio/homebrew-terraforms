cask "terraform-1-14-0-alpha20250724" do
  arch arm: "arm64", intel: "amd64"

  version "1.14.0-alpha20250724"
  sha256 arm:   "6bb8679844f12816f18deb90a05fc223a3e15748d2d2c94586c527aa61844633",
         intel: "ac43ec761bfef40c8db42fa9b3c5d10556637fb70a3352665c0f9c2b30240f83"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
