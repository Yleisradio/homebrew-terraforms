cask "terraform-0-12-0-alpha4" do
  version "0.12.0-alpha4"
  sha256 "ff742e857fe37e76747f099cf99f043c36d408c62cefba6a700e3c9c118e0690"

  # XXX: Upstream published this release under a doubled file name.
  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
