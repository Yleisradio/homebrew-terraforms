cask "terraform-1-5-0-alpha20230504" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.5.0-alpha20230504"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "32c5f4b9ff4258160fb94bcc5f04c9f187ebf1f56cf1ca6efc5e11c0aca500b6",
    arm: "d8940671bdf5dc2124eff2dbaa1a82e0e3847a38c7501e52d6b9c6f908002efd"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
