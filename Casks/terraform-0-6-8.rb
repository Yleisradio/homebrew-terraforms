cask "terraform-0-6-8" do
  version "0.6.8"
  sha256 "71fd8ff20f657a4c7d82794756d55c55b0686516a8253356b8edd1a728230577"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
