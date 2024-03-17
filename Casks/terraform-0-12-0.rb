cask "terraform-0-12-0" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.12.0"

  arch = "amd64"
  sha256 "9dbee9dea660ea64352f8ddf2539e60d1c414210e9c4a29c8585926fef366be1"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
