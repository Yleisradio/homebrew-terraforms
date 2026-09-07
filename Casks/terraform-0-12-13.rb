cask "terraform-0-12-13" do
  version "0.12.13"
  sha256 "77d9e73edccc9cc3c7b5e0f1c84a90f0f18b55359aff9181faf636c9fb14c15a"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
