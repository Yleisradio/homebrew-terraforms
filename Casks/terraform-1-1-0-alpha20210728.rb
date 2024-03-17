cask "terraform-1-1-0-alpha20210728" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.1.0-alpha20210728"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "9b63d9bab48bc9dfc3cb719fb8869746f7d16626888c2895c18e000fcf80cacd",
    arm: "b0c793e019ba8e43c9d0d9287463b5ddd8c09afcb06863f0270334c7ae3e74b2"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
