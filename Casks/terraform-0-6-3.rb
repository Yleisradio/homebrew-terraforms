cask "terraform-0-6-3" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.6.3"

  arch = "amd64"
  sha256 "d5c50b38bdba7dd11ccd31ebe04de9bb4a1f31a8b30ba967c863e3754d1bfd8b"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
