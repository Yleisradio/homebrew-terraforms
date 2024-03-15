cask "terraform-0-11-0-beta1" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.11.0-beta1"

  arch = "amd64"
  sha256 "5a8f9118bf99285aa41c60b150fb628ec6a1bc49293663fd2255eedc5934f379"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
