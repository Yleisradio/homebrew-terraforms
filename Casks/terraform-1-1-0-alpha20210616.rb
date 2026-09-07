cask "terraform-1-1-0-alpha20210616" do
  version "1.1.0-alpha20210616"
  sha256 "fd9a9c6ae65f3678b81e4ba5fe72350f0191ed0a0fc2ec12a6139e3a8887e203"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
