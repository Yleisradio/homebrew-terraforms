cask "terraform-1-13-5" do
  arch arm: "arm64", intel: "amd64"

  version "1.13.5"
  sha256 arm:   "1bf942231235e7e1a4c38c6d7b820e54f526ac487f87d19f0c4a425c6ddb62cb",
         intel: "92f76865230cbe6bb747e49cb3dc5b44a054324bbdd1a080bb127b326b94c404"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
