cask "terraform-1-1-3" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.1.3"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "016bab760c96d4e64d2140a5f25c614ccc13c3fe9b3889e70c564bd02099259f",
    arm: "02ba769bb0a8d4bc50ff60989b0f201ce54fd2afac2fb3544a0791aca5d3f6d5"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
