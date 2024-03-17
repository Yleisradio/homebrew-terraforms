cask "terraform-0-15-0-alpha20210127" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.15.0-alpha20210127"

  arch = "amd64"
  sha256 "ee7cf15916da97bd0959b2928bd1c23afd9d4e6a06a9529ee398d79dd490a452"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
