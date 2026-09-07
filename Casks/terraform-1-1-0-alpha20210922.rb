cask "terraform-1-1-0-alpha20210922" do
  arch arm: "arm64", intel: "amd64"

  version "1.1.0-alpha20210922"
  sha256 arm:   "d84fd0d2e967d2a822cf86c937739672ae533169af4b36cd8c6880f81847406b",
         intel: "79fb74af2ca42e39f217db4ca8cadd4a47ae900f632ec947b24738c65b80e40a"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
