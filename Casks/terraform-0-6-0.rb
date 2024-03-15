cask "terraform-0-6-0" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.6.0"

  arch = "amd64"
  sha256 "c519d3d18d5a2b0605bff6e0ca7bb677ea85c833f8e8dbb4af6a48e0ebf76cad"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
