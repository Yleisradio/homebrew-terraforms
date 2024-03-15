cask "terraform-0-2-0" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.2.0"

  arch = "amd64"
  sha256 "32c1c5d2df88c612207e9b5edea6f0f4c3bbdc8f2ae5f8c577ede2055548136b"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
