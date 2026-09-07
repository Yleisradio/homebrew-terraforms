cask "terraform-1-16-0-alpha20260617" do
  arch arm: "arm64", intel: "amd64"

  version "1.16.0-alpha20260617"
  sha256 arm:   "e4c66465895ae2686f7292a472776d52b2e0025c0c736483755235308371d040",
         intel: "84eac4b72f3f95927939f36a8363e094aa3a24e22659618f6a7a209a5b9a5e55"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
