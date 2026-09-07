cask "terraform-0-12-28" do
  version "0.12.28"
  sha256 "2c144bdd455d2cf059ff2e6db048667d6e093f29de172188aad176325ca5dc68"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
