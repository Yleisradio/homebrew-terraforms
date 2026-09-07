cask "terraform-1-1-0-alpha20210728" do
  arch arm: "arm64", intel: "amd64"

  version "1.1.0-alpha20210728"
  sha256 arm:   "b0c793e019ba8e43c9d0d9287463b5ddd8c09afcb06863f0270334c7ae3e74b2",
         intel: "9b63d9bab48bc9dfc3cb719fb8869746f7d16626888c2895c18e000fcf80cacd"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
