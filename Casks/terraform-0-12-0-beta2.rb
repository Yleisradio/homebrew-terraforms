cask "terraform-0-12-0-beta2" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.12.0-beta2"

  arch = "amd64"
  sha256 "6be99d150329e55ae636e40500e96a6243a6a00d74126eef9fdb47f17a1070d7"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
