cask "terraform-1-14-1" do
  arch arm: "arm64", intel: "amd64"

  version "1.14.1"
  sha256 arm:   "4e98074e6b8a4b4f692780101d82cd9974c521e4cd6def4ab6299594619cda53",
         intel: "7760332d860343f83d68ee96ec99edffc6a2e95281041afffc851ced5df0f6f3"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
