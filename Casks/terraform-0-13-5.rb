cask "terraform-0-13-5" do
  version "0.13.5"
  sha256 "6ede2ffced90d7ad0050ac5ff4c617ef7f07d1d2522b6ba83a07e5e980c28775"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
