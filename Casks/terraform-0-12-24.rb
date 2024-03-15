cask "terraform-0-12-24" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.12.24"

  arch = "amd64"
  sha256 "d97e5bb1064aa2da0b82865ecf588bea20afdd6bfaf0692fafcb9ff765de9b2b"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
