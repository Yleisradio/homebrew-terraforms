cask "terraform-0-14-1" do
  version "0.14.1"
  sha256 "3211e5858a7cf2f81f46a3ff2fa577c70998e0af22b589eb4cfa8057fa27f576"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
