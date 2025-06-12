cask "terraform-1-12-2" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.12.2"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "c65aa74bed1dbb1c48ba4bbab11f08e7f7eeb54a422146561490275340468f19",
    arm: "1ca02f336ff4f993d6441806d38a0bcc0bbca0e3c877b84c9c2dc80cfcd0dc8b"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
