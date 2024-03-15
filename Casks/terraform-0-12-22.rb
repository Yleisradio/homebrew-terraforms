cask "terraform-0-12-22" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.12.22"

  arch = "amd64"
  sha256 "7e2c6d74fb3ff141976567b3903d3ffc6721230d3dd4e346e4c09de146a947bb"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
