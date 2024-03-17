cask "terraform-0-5-3" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.5.3"

  arch = "amd64"
  sha256 "9d3388266510a03ea5f5ba2a721ab2affc854777c973d821f16e7dcd514adb7b"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
