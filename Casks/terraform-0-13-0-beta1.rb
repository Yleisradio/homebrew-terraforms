cask "terraform-0-13-0-beta1" do
  version "0.13.0-beta1"
  sha256 "e04f099544df4725b16e4c8835c08f880cf960441bebd9baea868ea4d39f6f6f"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
