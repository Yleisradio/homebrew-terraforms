cask "terraform-1-2-9" do
  arch arm: "arm64", intel: "amd64"

  version "1.2.9"
  sha256 arm:   "bc3b94b53cdf1be3c4988faa61aad343f48e013928c64bfc6ebeb61657f97baa",
         intel: "84a678ece9929cebc34c7a9a1ba287c8b91820b336f4af8437af7feaa0117b7c"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
