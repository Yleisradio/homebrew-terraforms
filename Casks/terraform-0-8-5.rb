cask "terraform-0-8-5" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.8.5"

  arch = "amd64"
  sha256 "10253ac843b7a170844d629cbdbd2287bf687cdd3d2938e4ab9140d10534cf38"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
