cask "terraform-0-11-0" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.11.0"

  arch = "amd64"
  sha256 "0d5f7ffcfd34fe58ed25fe48650f1c9ac1d9e15983af43deaeffc6d0a88ba346"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
