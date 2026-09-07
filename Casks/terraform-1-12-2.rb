cask "terraform-1-12-2" do
  arch arm: "arm64", intel: "amd64"

  version "1.12.2"
  sha256 arm:   "1ca02f336ff4f993d6441806d38a0bcc0bbca0e3c877b84c9c2dc80cfcd0dc8b",
         intel: "c65aa74bed1dbb1c48ba4bbab11f08e7f7eeb54a422146561490275340468f19"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
