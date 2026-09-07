cask "terraform-0-14-3" do
  version "0.14.3"
  sha256 "577f5bdb4dc0828737389b634b07895e971c7860b1e01bc765fdd9563c5ce1a4"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
