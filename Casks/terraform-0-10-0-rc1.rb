cask "terraform-0-10-0-rc1" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.10.0-rc1"

  arch = "amd64"
  sha256 "cb8b8c7abc291467bd432cbadb993b6972538c0d438cd6933d29c5c0702574d2"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
