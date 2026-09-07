cask "terraform-0-10-2" do
  version "0.10.2"
  sha256 "1ad6bad0349a3bcda8264746a3db0a39875c2cd93e3418393cc082bbb4812541"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
