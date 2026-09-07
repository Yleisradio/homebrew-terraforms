cask "terraform-1-16-0-alpha20260708" do
  arch arm: "arm64", intel: "amd64"

  version "1.16.0-alpha20260708"
  sha256 arm:   "443d008d053fdcbc677a31e28af44c950fd78936f19617b9632111dc2aa7d5b3",
         intel: "61fa8a63ee49a1ab8a083f93b9df15e9fc7ff578c6b012b6f2125d9e3151965e"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
