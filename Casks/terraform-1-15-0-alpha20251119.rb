cask "terraform-1-15-0-alpha20251119" do
  arch arm: "arm64", intel: "amd64"

  version "1.15.0-alpha20251119"
  sha256 arm:   "1044273c5f9d3db52e6c6d6c581f1012ea13731ea3694c502ae306715513e36f",
         intel: "0546c05be47fa4b5671ed09aa3ab81473dc52a0a4d15714ddbddeb00793fc16c"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
