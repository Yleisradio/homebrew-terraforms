cask "terraform-0-12-0-alpha3" do
  version "0.12.0-alpha3"
  sha256 "027d468deb4898036b10aa0654717da6efca315aa636a2d156cb87404d89daef"

  # XXX: Upstream published this release under a doubled file name.
  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
