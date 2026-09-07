cask "terraform-1-12-0-beta1" do
  arch arm: "arm64", intel: "amd64"

  version "1.12.0-beta1"
  sha256 arm:   "61cdd53201fd5724dc056a3ffc440111e67cb2b96715bbccaba70885e9fd218c",
         intel: "312847595c98f4660dd043a8623d92c0d7b326aa33b730165b17fb0078730f50"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
