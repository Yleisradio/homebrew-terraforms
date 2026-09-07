cask "terraform-0-11-9-beta1" do
  version "0.11.9-beta1"
  sha256 "a95ac475acd068a876a1068fa90cb2e9370e1c28e8c7fc57b7db016629b533be"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
