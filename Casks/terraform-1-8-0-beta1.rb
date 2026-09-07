cask "terraform-1-8-0-beta1" do
  arch arm: "arm64", intel: "amd64"

  version "1.8.0-beta1"
  sha256 arm:   "8459f7e2ac80844ac7a78b4b667357e47a713eccddf8782d7428e91bf6c220f0",
         intel: "a975d14026fe2b36bd0ab09c2cae113d2d2a58173151387981e6ce787094b91c"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
