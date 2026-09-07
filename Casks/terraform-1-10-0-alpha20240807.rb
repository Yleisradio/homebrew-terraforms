cask "terraform-1-10-0-alpha20240807" do
  arch arm: "arm64", intel: "amd64"

  version "1.10.0-alpha20240807"
  sha256 arm:   "400cf00b2a6f44f498c705ea7360b26854c8f77eb973a4ec0d36c441505bae8c",
         intel: "3c5ccd6b6a9cafd80db6cc1dd3037bd53bf16d87c4b91a3dfc268962f81d0021"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
