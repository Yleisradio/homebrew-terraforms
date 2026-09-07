cask "terraform-0-15-0-alpha20210210" do
  version "0.15.0-alpha20210210"
  sha256 "3fcccd708947e8d8ac54a6a5b9b4835c410336506aa3ce25579c40c2df854423"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
