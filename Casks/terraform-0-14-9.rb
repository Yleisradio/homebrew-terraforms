cask "terraform-0-14-9" do
  version "0.14.9"
  sha256 "a62e812d068b44b8a93d8b2fc024850ad69cb5ce7f9b0bfc68e836b90a06693d"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
