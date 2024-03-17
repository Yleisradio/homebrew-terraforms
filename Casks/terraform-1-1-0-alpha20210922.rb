cask "terraform-1-1-0-alpha20210922" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.1.0-alpha20210922"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "79fb74af2ca42e39f217db4ca8cadd4a47ae900f632ec947b24738c65b80e40a",
    arm: "d84fd0d2e967d2a822cf86c937739672ae533169af4b36cd8c6880f81847406b"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
