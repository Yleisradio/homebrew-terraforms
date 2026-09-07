cask "terraform-1-14-0-alpha20250716" do
  arch arm: "arm64", intel: "amd64"

  version "1.14.0-alpha20250716"
  sha256 arm:   "2c4d2c8d6410835c116d2ccf9696f1686e9170e763f920a8f463d2b9f838382c",
         intel: "7347cde817980c69da13812f68625637308649a87a044ce8e26f77b74c4120bf"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
