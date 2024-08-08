cask "terraform-1-10-0-alpha20240807" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.10.0-alpha20240807"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "3c5ccd6b6a9cafd80db6cc1dd3037bd53bf16d87c4b91a3dfc268962f81d0021",
    arm: "400cf00b2a6f44f498c705ea7360b26854c8f77eb973a4ec0d36c441505bae8c"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
