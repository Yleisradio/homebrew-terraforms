cask "terraform-0-6-0" do
  version "0.6.0"
  sha256 "c519d3d18d5a2b0605bff6e0ca7bb677ea85c833f8e8dbb4af6a48e0ebf76cad"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
