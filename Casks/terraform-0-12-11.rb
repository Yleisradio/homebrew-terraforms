cask "terraform-0-12-11" do
  version "0.12.11"
  sha256 "31c7451366605a9d6a6dc41ae0ab29ec186eebeed13e05349f578eaac7692596"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
