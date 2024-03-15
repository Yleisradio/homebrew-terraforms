cask "terraform-0-1-1" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.1.1"

  arch = "amd64"
  sha256 "1387eca09fcad8571f02d2f34b79d7cff5f420da8cc52e9b0841696461c99b38"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
