cask "terraform-1-2-9" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.2.9"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "84a678ece9929cebc34c7a9a1ba287c8b91820b336f4af8437af7feaa0117b7c",
    arm: "bc3b94b53cdf1be3c4988faa61aad343f48e013928c64bfc6ebeb61657f97baa"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
