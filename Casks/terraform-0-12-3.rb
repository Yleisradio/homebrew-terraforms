cask "terraform-0-12-3" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.12.3"

  arch = "amd64"
  sha256 "f0e09af8ce413ec9a949c00ea6645cd8169a03412e545a3375adf91c3ad8c7ad"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
