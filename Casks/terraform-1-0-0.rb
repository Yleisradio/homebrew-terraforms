cask "terraform-1-0-0" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.0.0"

  arch = "amd64"
  sha256 "397eccdf68eb343e4946c37a877a4764409fe0b9037041daf1d17db18bca9839"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
