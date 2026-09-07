cask "terraform-1-9-0-beta1" do
  arch arm: "arm64", intel: "amd64"

  version "1.9.0-beta1"
  sha256 arm:   "f9bd783b5b8dd955cdeec70073ac05b4d27b29578ee5c3ff0bc98b3387633ab6",
         intel: "0fe8128db43738cddecbf6c045ab0746eae09859821e4e04ade42c8d861e266f"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
