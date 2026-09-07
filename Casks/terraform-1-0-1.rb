cask "terraform-1-0-1" do
  version "1.0.1"
  sha256 "260524ebe620a73df4c9732fec6887e74414df6d3210f5c6eaca24558f320938"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
