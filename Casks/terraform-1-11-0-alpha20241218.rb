cask "terraform-1-11-0-alpha20241218" do
  arch arm: "arm64", intel: "amd64"

  version "1.11.0-alpha20241218"
  sha256 arm:   "b9f1fbc9796dc8c593f9d3fb741c373d4ecb405b30a707a01e1084d0482bc51f",
         intel: "16904b8762b044f247d10922373de54d65ebe2f9cb5735bf45f6079775bcbdbe"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
